import 'package:app/application/blocs/search_drug/search_drug_bloc.dart';
import 'package:app/application/blocs/search_drug/search_drug_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchDrugList extends StatelessWidget {
  const SearchDrugList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        top: 0,
      ),
      sliver: SliverToBoxAdapter(
        child: BlocBuilder<SearchDrugBloc, SearchDrugState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is Success) {
              if (state.drugs?.isNotEmpty ?? false) {
                return ListView.separated(
                  itemCount: state.drugs?.length ?? 0,
                  itemBuilder: (context, index) {
                    final drug = state.drugs?[index];

                    return Padding(
                      padding: const EdgeInsets.only(
                        top: paddingBottom,
                        bottom: paddingBottom,
                      ),
                      child: Text(
                        drug?.shortName ?? '',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(
                    height: 0.5,
                    color: Colors.grey,
                  ),
                );
              } else {
                return Text(
                  'No medicine was found',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                );
              }
            } else {
              return Text(
                'No medicine was found',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                    ),
              );
            }
          },
        ),
      ),
    );
  }
}
