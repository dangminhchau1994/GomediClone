import 'package:app/application/constants/dimensions.dart';
import 'package:app/infrastructure/models/bottom_item/bottom_item.dart';
import 'package:flutter/material.dart';
import '../../../application/theme/ui_color.dart';

class DrugListWeekdays extends StatefulWidget {
  const DrugListWeekdays({
    super.key,
    this.weekdays,
    this.updateWeekdays,
  });

  final List<BottomItem>? weekdays;
  final Function(List<BottomItem>)? updateWeekdays;

  @override
  State<DrugListWeekdays> createState() => _DrugListWeekdaysState();
}

class _DrugListWeekdaysState extends State<DrugListWeekdays> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: const EdgeInsets.only(bottom: 100),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: widget.weekdays?.length ?? 0,
        separatorBuilder: (context, index) => const Divider(
          height: 0.5,
          color: Colors.grey,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              if (widget.weekdays?[index].isChecked ?? false) {
                widget.weekdays?[index].isChecked = false;
              } else {
                widget.weekdays?[index].isChecked = true;
              }
              widget.updateWeekdays!(widget.weekdays ?? []) ?? () {};
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(paddingAll),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.weekdays?[index].title ?? '',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Visibility(
                  visible: widget.weekdays?[index].isChecked ?? false,
                  child: Icon(
                    Icons.check,
                    color: UIColors.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
