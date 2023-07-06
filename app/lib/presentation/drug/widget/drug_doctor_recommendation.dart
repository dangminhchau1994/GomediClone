import 'package:flutter/material.dart';

import '../../../application/widgets/ui_text_input.dart';

class DrugDoctorRecommendation extends StatelessWidget {
  const DrugDoctorRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UITextInput(
          maxLine: 3,
          title: 'Doctoc"s recommendation',
          textInputType: TextInputType.text,
          onChanged: (value) {
            if (value.isEmpty) return;
          },
        ),
      ],
    );
  }
}
