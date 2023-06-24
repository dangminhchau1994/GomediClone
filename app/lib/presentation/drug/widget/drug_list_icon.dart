import 'package:app/application/constants/dimensions.dart';
import 'package:app/infrastructure/models/drug/drug_icon.dart';
import 'package:app/infrastructure/network/api/endpoints.dart';
import 'package:flutter/material.dart';
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
      children: widget.drugIcons
              ?.map(
                (e) => Container(
                  margin: const EdgeInsets.all(4),
                  padding: const EdgeInsets.all(paddingLeft),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: SvgPicture.network(
                    '${Endpoints.iconPrefix}/${e.iconPath}',
                    width: 25,
                    height: 25,
                  ),
                ),
              )
              .toList() ??
          [],
    );
  }
}
