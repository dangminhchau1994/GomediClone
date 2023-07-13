import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/infrastructure/models/drug_profile/drug_schedule.dart';
import 'package:app/presentation/drug/widget/drug_time_dose_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/blocs/drug/drug_event.dart';
import '../../../application/constants/dimensions.dart';
import '../../../application/widgets/ui_primary_button.dart';

class DrugTimeDoseInput extends StatefulWidget {
  const DrugTimeDoseInput({
    super.key,
    this.timeCounts = 0,
  });

  final int? timeCounts;

  @override
  State<DrugTimeDoseInput> createState() => _DrugTimeDoseInputState();
}

class _DrugTimeDoseInputState extends State<DrugTimeDoseInput> {
  var formKey = GlobalKey<FormState>();
  var drugSchedules = <DrugScheduleDefinitions>[];

  Future<void> _showBottomSheet() {
    final dialog = showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white.withOpacity(1),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      builder: (buidContext) {
        return SizedBox(
          height: 400,
          child: Form(
            key: formKey,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: DrugTimeDoseList(
                    drugSchedules: drugSchedules,
                    updateDrugSchedules: (newSchedules) {
                      drugSchedules = newSchedules;
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    margin: const EdgeInsets.only(top: paddingtTop),
                    padding: const EdgeInsets.all(paddingAll),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: SafeArea(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: UIButton(
                              isPrimaryButton: false,
                              title: 'Cancel',
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: UIButton(
                              title: 'OK',
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.of(context).pop();
                                  context.read<DrugBloc>().add(
                                      DrugEvent.addDrugSchedule(drugSchedules));
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
    return dialog;
  }

  @override
  Widget build(BuildContext context) {
    drugSchedules = <DrugScheduleDefinitions>[];
    for (var i = 0; i < widget.timeCounts!; i++) {
      drugSchedules.add(DrugScheduleDefinitions());
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Time and dose',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: paddingtTop,
        ),
        BlocBuilder<DrugBloc, DrugState>(
          builder: (context, state) {
            var times = '';
            var drugScheduleDefinitions = state.drugScheduleDefinitions ?? [];
            for (var i = 0; i < drugScheduleDefinitions.length; i++) {
              if (drugScheduleDefinitions[i].doseQuantity != null) {
                times +=
                    ' ${drugScheduleDefinitions[i].drugTime ?? '00:00:00'} - ${drugScheduleDefinitions[i].doseQuantity}x dose,';
              }
            }

            return GestureDetector(
              onTap: () async => _showBottomSheet(),
              child: Container(
                padding: const EdgeInsets.all(paddingAll),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        times,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                      size: 20,
                    ),
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
