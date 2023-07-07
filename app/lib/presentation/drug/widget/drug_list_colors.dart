import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/blocs/drug/drug_event.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/infrastructure/models/drug/drug_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/extensions/color_extension.dart';

class DrugListColors extends StatefulWidget {
  const DrugListColors({
    super.key,
    this.drugColors,
    this.updateFirstDrugColor,
  });

  final List<DrugColor>? drugColors;
  final Function(DrugColor drugColor)? updateFirstDrugColor;

  @override
  State<DrugListColors> createState() => _DrugListColorsState();
}

class _DrugListColorsState extends State<DrugListColors> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        widget.drugColors?.length ?? 0,
        (index) => GestureDetector(
          onTap: () {
            widget.updateFirstDrugColor!(
                widget.drugColors?[index] ?? const DrugColor());
            context.read<DrugBloc>().add(
                  DrugEvent.drugFirstColorSelected(index),
                );
          },
          child: BlocBuilder<DrugBloc, DrugState>(
            builder: (context, state) => Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(paddingAll),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: state.firstColorSelected == index
                    ? Border.all(
                        color: Colors.black,
                        width: 1,
                        strokeAlign: 5,
                      )
                    : null,
                color: HexColor(
                  widget.drugColors?[index].rgb ?? '',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
