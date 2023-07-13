import 'package:app/application/constants/dimensions.dart';
import 'package:app/infrastructure/models/drug/drug_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/blocs/drug/drug_bloc.dart';
import '../../../application/blocs/drug/drug_event.dart';
import '../../../application/blocs/drug/drug_state.dart';
import '../../../application/extensions/color_extension.dart';

class DrugSecondListColors extends StatefulWidget {
  const DrugSecondListColors({
    super.key,
    this.drugColors,
    this.updateSecondColor,
  });

  final List<DrugColor>? drugColors;
  final Function(DrugColor drugColor)? updateSecondColor;

  @override
  State<DrugSecondListColors> createState() => _DrugSecondListColorsState();
}

class _DrugSecondListColorsState extends State<DrugSecondListColors> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        widget.drugColors?.length ?? 0,
        (index) => GestureDetector(
          onTap: () {
            widget.updateSecondColor!(
                widget.drugColors?[index] ?? const DrugColor());
            context.read<DrugBloc>().add(
                  DrugEvent.drugSecondColorSelected(index),
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
                border: state.secondColorSelected == index
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
