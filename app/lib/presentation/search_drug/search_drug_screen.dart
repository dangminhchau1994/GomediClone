import 'package:app/application/blocs/search_drug/search_drug_bloc.dart';
import 'package:app/application/blocs/search_drug/search_drug_event.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:app/di/service_locator.dart';
import 'package:app/domain/drug/i_drug_repository.dart';
import 'package:app/presentation/search_drug/widgets/search_drug_bottom.dart';
import 'package:app/presentation/search_drug/widgets/search_drug_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/core/form_validator.dart';

class SearchDrugScreen extends StatelessWidget {
  const SearchDrugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchDrugBloc(
        getIt<IDrugRepository>(),
      ),
      child: const Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: kMargin,
              vertical: kMargin,
            ),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: UITextInput(
                      title: 'Name of the drug',
                      textHint: 'Enter the drug name',
                      onChanged: (value) => value.length >= 3
                          ? context.read<SearchDrugBloc>().add(
                                SearchDrug(value),
                              )
                          : () {},
                      validator: (value) {
                        return shortKeyword(value).fold(
                          (l) => 'Provide min 3 charactes to search',
                          (r) => null,
                        );
                      },
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: paddingRight),
                  ),
                  SliverToBoxAdapter(
                    child: Text(
                      'Results',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: paddingRight),
                  ),
                  const SearchDrugList(),
                ],
              ),
            ),
          ),
          const SearchDrugBottom()
        ],
      ),
    );
  }
}
