import 'package:another_flushbar/flushbar_helper.dart';
import 'package:app/application/blocs/search_drug/search_drug_bloc.dart';
import 'package:app/application/blocs/search_drug/search_drug_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/theme/ui_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/blocs/status/base_status.dart';

class SearchDrugList extends StatelessWidget {
  const SearchDrugList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 10,
      separatorBuilder: (context, index) => const Divider(
        height: 0.5,
        color: Colors.grey,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(
          top: paddingBottom,
          bottom: paddingBottom,
        ),
        child: Text(
          'Drug name',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: Colors.black,
                fontSize: 14,
              ),
        ),
      ),
    );
  }
}
