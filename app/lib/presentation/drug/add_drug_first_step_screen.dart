import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/blocs/drug/drug_event.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/application/widgets/ui_primary_button.dart';
import 'package:app/application/widgets/ui_selected_profile.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:app/infrastructure/models/bottom_item/bottom_item.dart';
import 'package:app/presentation/drug/add_drug_second_step_screen.dart';
import 'package:app/presentation/drug/widget/drug_list_colors.dart';
import 'package:app/presentation/drug/widget/drug_list_icon.dart';
import 'package:app/presentation/drug/widget/drug_list_second_colors.dart';
import 'package:app/presentation/drug/widget/drug_priority_field.dart';
import 'package:app/presentation/drug/widget/drug_type_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../di/service_locator.dart';
import '../../domain/drug/i_drug_repository.dart';

class AddDrugFirstStepScreen extends StatefulWidget {
  const AddDrugFirstStepScreen({super.key});

  @override
  State<AddDrugFirstStepScreen> createState() => _AddDrugFirstStepScreen();
}

class _AddDrugFirstStepScreen extends State<AddDrugFirstStepScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DrugBloc(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIAppbar(
        title: 'Add Medicine',
        showArrow: true,
        showBadge: true,
        onPop: () {},
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: paddingAll,
                  vertical: paddingAll,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UISelectedProfile(
                        title: 'Choose a profile',
                        onUpdateItem: (item) {},
                      ),
                      const SizedBox(
                        height: mediumPaddingTOp,
                      ),
                      UITextInput(
                        title: 'Name of the drug',
                        isEditType: true,
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        height: mediumPaddingTOp,
                      ),
                      UITextInput(
                        title: 'Own name of the drug',
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        height: mediumPaddingTOp,
                      ),
                      BlocBuilder<DrugBloc, DrugState>(
                        builder: (context, state) {
                          if (state.status is Loading) {
                            return Container();
                          } else if (state.status is Success) {
                            return DrugPriorityField(
                              title: 'Drug Priority',
                              onUpdateItem: (item) {},
                              bottomItems: state.drugPriorities
                                  ?.map(
                                    (e) => BottomItem(
                                      id: e.id,
                                      title: e.name,
                                      description: e.description,
                                    ),
                                  )
                                  .toList(),
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                      const SizedBox(
                        height: mediumPaddingTOp,
                      ),
                      BlocBuilder<DrugBloc, DrugState>(
                        builder: (context, state) {
                          if (state.status is Loading) {
                            return Container();
                          } else if (state.status is Success) {
                            return DrugTypeField(
                              title: 'Type of drug',
                              onUpdateItem: (item) {
                                context
                                    .read<DrugBloc>()
                                    .add(const DrugEvent.drugIconSelected(0));
                                context.read<DrugBloc>().add(
                                    const DrugEvent.isDrugDivisible(false));
                                context
                                    .read<DrugBloc>()
                                    .add(DrugEvent.addDrugTypeId(item.id ?? 1));
                              },
                              bottomItems: state.drugTypes
                                  ?.map(
                                    (e) => BottomItem(
                                      id: e.id,
                                      title: e.name,
                                    ),
                                  )
                                  .toList(),
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                      const SizedBox(
                        height: mediumPaddingTOp,
                      ),
                      Text(
                        'Choose the icon:',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: paddingtTop,
                      ),
                      BlocBuilder<DrugBloc, DrugState>(
                        builder: (context, state) {
                          if (state.status is Loading) {
                            return Container();
                          } else if (state.status is Success) {
                            final drugIcons = state.drugIcons
                                ?.where((element) =>
                                    element.drugTypeId == state.drugTypeId)
                                .toList();

                            return DrugListIcon(
                              drugIcons: drugIcons,
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                      const SizedBox(
                        height: mediumPaddingTOp,
                      ),
                      Text(
                        'Choose color:',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      const SizedBox(
                        height: paddingtTop,
                      ),
                      BlocBuilder<DrugBloc, DrugState>(
                        builder: (context, state) {
                          if (state.status is Loading) {
                            return Container();
                          } else if (state.status is Success) {
                            return DrugListColors(
                              drugColors: state.drugColors,
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                      const SizedBox(
                        height: mediumPaddingTOp,
                      ),
                      BlocBuilder<DrugBloc, DrugState>(
                        builder: (context, state) {
                          if (state.status is Loading) {
                            return Container();
                          } else if (state.status is Success) {
                            return Visibility(
                              visible: state.isDivisible ?? false,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Choose color 2:',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  const SizedBox(
                                    height: paddingtTop,
                                  ),
                                  DrugSecondListColors(
                                    drugColors: state.drugColors,
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                margin: const EdgeInsets.only(top: paddingtTop),
                padding: const EdgeInsets.all(paddingAll),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: UIButton(
                  isPrimaryButton: true,
                  isScanButton: false,
                  title: 'Next',
                  onPressed: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: const AddDrugSecondStep(),
                      withNavBar: true,
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
