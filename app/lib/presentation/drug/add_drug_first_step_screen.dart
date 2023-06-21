import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/application/widgets/ui_selected_profile.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:flutter/material.dart';

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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
