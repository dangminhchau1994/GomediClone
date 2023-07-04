import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/theme/ui_color.dart';
import 'package:flutter/material.dart';

import '../../../application/widgets/ui_text_input.dart';

class DrugTotalAlert extends StatefulWidget {
  const DrugTotalAlert({super.key});

  @override
  State<DrugTotalAlert> createState() => _DrugTotalAlertState();
}

class _DrugTotalAlertState extends State<DrugTotalAlert> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UITextInput(
          title: 'Minimum amount of drug to the alert',
          textInputType: TextInputType.number,
          onChanged: (value) {
            if (value.isEmpty) return;
          },
        ),
        const SizedBox(
          height: paddingtTop,
        ),
        Text(
          'The alerts will be visible after adding the drug, according to the defined minimum amout',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 14,
                color: UIColors.lightGrey,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
