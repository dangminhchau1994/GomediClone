import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/blocs/drug/drug_event.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:app/infrastructure/models/drug_profile/drug_schedule.dart';
import 'package:app/presentation/drug/widget/drug_time_dose_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/widgets/ui_app_bar.dart';

class AddDrugSecondStep extends StatelessWidget {
  const AddDrugSecondStep({
    super.key,
    this.drugBloc,
  });

  final DrugBloc? drugBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: drugBloc!,
      child: const Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIAppbar(
        title: 'Add Medicine',
        showArrow: true,
        showBadge: true,
        onPop: () {},
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: paddingBottom,
                vertical: paddingBottom,
              ),
              child: Column(
                children: [
                  UITextInput(
                    title: 'How many times a day?',
                    textInputType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isEmpty) {
                        return;
                      }
                      final times = int.parse(value);
                      final drugSchedules = <DrugScheduleDefinitions>[];
                      for (var i = 0; i < times; i++) {
                        drugSchedules.add(DrugScheduleDefinitions());
                        context.read<DrugBloc>().add(
                              DrugEvent.addDrugSchedule(drugSchedules),
                            );
                      }
                    },
                  ),
                  const SizedBox(
                    height: mediumPaddingTOp,
                  ),
                  BlocBuilder<DrugBloc, DrugState>(
                    builder: (context, state) => DrugTimeDoseInput(
                      drugSchedules: state.drugScheduleDefinitions ?? [],
                      updateSchedule: (drugSchedules) {
                        context.read<DrugBloc>().add(
                              DrugEvent.addDrugSchedule(drugSchedules ?? []),
                            );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
