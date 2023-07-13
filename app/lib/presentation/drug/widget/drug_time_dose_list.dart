import 'package:app/presentation/drug/widget/drug_time_input_dose_row.dart';
import 'package:flutter/material.dart';
import '../../../application/constants/dimensions.dart';
import '../../../infrastructure/models/drug_profile/drug_schedule.dart';

class DrugTimeDoseList extends StatefulWidget {
  const DrugTimeDoseList({
    super.key,
    this.drugSchedules,
    this.updateDrugSchedules,
  });

  final List<DrugScheduleDefinitions>? drugSchedules;
  final Function(List<DrugScheduleDefinitions>)? updateDrugSchedules;

  @override
  State<DrugTimeDoseList> createState() => _DrugTimeDoseListState();
}

class _DrugTimeDoseListState extends State<DrugTimeDoseList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Time and dose',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const Divider(
              height: 0.5,
              color: Colors.grey,
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.5,
          child: ListView.builder(
            itemCount: widget.drugSchedules?.length ?? 0,
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(
                horizontal: paddingLeft,
                vertical: paddingLeft,
              ),
              child: DrugTimeInputDoseRow(
                index: index,
                drugSchedules: widget.drugSchedules,
                updateDrugSchedules: widget.updateDrugSchedules,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
