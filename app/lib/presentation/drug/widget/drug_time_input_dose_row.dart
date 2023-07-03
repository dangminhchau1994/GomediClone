import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../application/constants/dimensions.dart';
import '../../../application/constants/string_constanst.dart';
import '../../../application/utils/time_utils.dart';
import '../../../application/widgets/ui_text_input.dart';
import '../../../infrastructure/models/drug_profile/drug_schedule.dart';

class DrugTimeInputDoseRow extends StatefulWidget {
  const DrugTimeInputDoseRow({
    super.key,
    this.drugSchedules,
    this.updateDrugSchedules,
    this.index,
  });

  final List<DrugScheduleDefinitions>? drugSchedules;
  final Function(List<DrugScheduleDefinitions>)? updateDrugSchedules;
  final int? index;

  @override
  State<DrugTimeInputDoseRow> createState() => _DrugTimeInputDoseRowState();
}

class _DrugTimeInputDoseRowState extends State<DrugTimeInputDoseRow>
    with AutomaticKeepAliveClientMixin {
  DrugScheduleDefinitions? drugSchedule;

  @override
  void initState() {
    super.initState();
    drugSchedule = widget.drugSchedules?[widget.index ?? 0];
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dose: ${widget.index! + 1}',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200,
                height: 100,
                child: CupertinoTimerPicker(
                  mode: CupertinoTimerPickerMode.hm,
                  onTimerDurationChanged: (Duration value) {
                    drugSchedule?.drugTime = TimeUtils.convertDuration(value);
                    widget.updateDrugSchedules!(widget.drugSchedules ?? []);
                  },
                ),
              ),
              const SizedBox(
                width: paddingLeft,
              ),
              SizedBox(
                width: 100,
                child: UITextInput(
                  textHint: 'dose',
                  textInputType: TextInputType.number,
                  onChanged: (value) {
                    if (value.isEmpty) return;
                    drugSchedule?.doseQuantity = int.parse(value);
                    widget.updateDrugSchedules!(widget.drugSchedules ?? []);
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return StringConstants.emptyInput;
                    } else {
                      return null;
                    }
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
