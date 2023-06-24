import 'package:app/application/constants/dimensions.dart';
import 'package:app/infrastructure/models/drug/drug_color.dart';
import 'package:flutter/material.dart';

import '../../../application/extensions/color_extension.dart';

class DrugListColors extends StatefulWidget {
  const DrugListColors({
    super.key,
    this.drugColors,
  });

  final List<DrugColor>? drugColors;

  @override
  State<DrugListColors> createState() => _DrugListColorsState();
}

class _DrugListColorsState extends State<DrugListColors> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        widget.drugColors?.length ?? 0,
        (index) => Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(paddingAll),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 1),
            color: HexColor(widget.drugColors?[index].rgb ?? ''),
          ),
        ),
      ),
    );
  }
}
