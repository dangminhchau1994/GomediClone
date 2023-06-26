import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/blocs/drug/drug_event.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/infrastructure/models/drug/drug_icon.dart';
import 'package:app/infrastructure/network/api/endpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrugListIcon extends StatefulWidget {
  const DrugListIcon({
    super.key,
    this.drugIcons,
  });

  final List<DrugIcon>? drugIcons;

  @override
  State<DrugListIcon> createState() => _DrugListIconState();
}

class _DrugListIconState extends State<DrugListIcon> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        widget.drugIcons?.length ?? 0,
        (index) => GestureDetector(
          onTap: () {
            context.read<DrugBloc>().add(DrugEvent.drugIconSelected(index));
            context.read<DrugBloc>().add(DrugEvent.isDrugDivisible(
                widget.drugIcons?[index].isDivisible ?? false));
          },
          child: BlocBuilder<DrugBloc, DrugState>(
            builder: (context, state) => Container(
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(paddingLeft),
              decoration: state.iconSelected == index
                  ? BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    )
                  : null,
              child: SvgPicture.network(
                '${Endpoints.iconPrefix}/${widget.drugIcons?[index].iconPath}',
                width: 25,
                height: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
