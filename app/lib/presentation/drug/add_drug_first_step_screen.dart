import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/application/widgets/ui_selected_profile.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:app/infrastructure/models/bottom_item/bottom_item.dart';
import 'package:app/presentation/drug/widget/drug_list_colors.dart';
import 'package:app/presentation/drug/widget/drug_list_icon.dart';
import 'package:app/presentation/drug/widget/drug_priority_field.dart';
import 'package:app/presentation/drug/widget/drug_type_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDrugFirstStepScreen extends StatefulWidget {
  const AddDrugFirstStepScreen({super.key});

  @override
  State<AddDrugFirstStepScreen> createState() => _AddDrugFirstStepScreenState();
}

class _AddDrugFirstStepScreenState extends State<AddDrugFirstStepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIAppbar(
        title: 'Add Medicine',
        showArrow: true,
        showBadge: true,
        onPop: () {},
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: paddingAll,
                vertical: paddingAll,
              ),
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
                          onUpdateItem: (item) {},
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
                        return DrugListIcon(
                          drugIcons: state.drugIcons,
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
