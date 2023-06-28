import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:app/presentation/drug/widget/drug_time_dose_input.dart';
import 'package:flutter/material.dart';

import '../../application/widgets/ui_app_bar.dart';

class AddDrugSecondStep extends StatelessWidget {
  const AddDrugSecondStep({super.key});

  @override
  Widget build(BuildContext context) {
    return const Body();
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: paddingBottom,
                vertical: paddingBottom,
              ),
              child: Column(
                children: [
                  UITextInput(
                    title: 'How many times a day?',
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: mediumPaddingTOp,
                  ),
                  const DrugTimeOoseInput(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
