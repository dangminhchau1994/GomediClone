import 'package:app/application/blocs/search_drug/search_drug_bloc.dart';
import 'package:app/application/blocs/search_drug/search_drug_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/infrastructure/models/drug_profile/drug_profile.dart';
import 'package:app/presentation/drug/add_drug_first_step_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class SearchDrugList extends StatelessWidget {
  const SearchDrugList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        top: 0,
        bottom: 200,
      ),
      sliver: SliverToBoxAdapter(
        child: BlocBuilder<SearchDrugBloc, SearchDrugState>(
          builder: (context, state) {
            if (state.status is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.status is Success) {
              if (state.drugs?.isNotEmpty ?? false) {
                return ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.drugs?.length ?? 0,
                  itemBuilder: (context, index) {
                    final drug = state.drugs?[index];

                    return InkWell(
                      onTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          withNavBar: true,
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                          screen: AddDrugFirstStepScreen(
                            drugProfile: DrugProfile(
                              id: drug?.id,
                              name: drug?.shortName,
                              drugOwnName: drug?.shortName,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: paddingBottom,
                          bottom: paddingBottom,
                        ),
                        child: Text(
                          drug?.shortName ?? '',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
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
