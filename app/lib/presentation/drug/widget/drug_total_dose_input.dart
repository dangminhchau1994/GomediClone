import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/theme/ui_color.dart';
import 'package:flutter/material.dart';

import '../../../application/widgets/ui_text_input.dart';

class DrugTotalDoses extends StatefulWidget {
  const DrugTotalDoses({super.key});

  @override
  State<DrugTotalDoses> createState() => _DrugTotalDosesState();
}

class _DrugTotalDosesState extends State<DrugTotalDoses> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UITextInput(
          title: 'The number of doses of the drug',
          textInputType: TextInputType.number,
          onChanged: (value) {
            if (value.isEmpty) return;
          },
        ),
        const SizedBox(
          height: paddingtTop,
        ),
        Text(
          'Enter how much full doses you have, e.g the number of\ntablets in the package',
          overflow: TextOverflow.ellipsis,
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
