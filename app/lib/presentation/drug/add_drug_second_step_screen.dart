import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:app/presentation/drug/widget/drug_duration_input.dart';
import 'package:app/presentation/drug/widget/drug_time_dose_input.dart';
import 'package:app/presentation/drug/widget/drug_total_alert_input.dart';
import 'package:app/presentation/drug/widget/drug_total_dose_input.dart';
import 'package:app/presentation/drug/widget/drug_weekdays_input.dart';
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
  var timeCounts = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIAppbar(
        title: 'Add Medicine',
        showArrow: true,
        showBadge: true,
        onPop: () {},
      ),
      body: SafeArea(
        child: Stack(
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
                        if (value.isEmpty) return;
                        setState(() {
                          timeCounts = int.parse(value);
                        });
                      },
                    ),
                    const SizedBox(
                      height: mediumPaddingTOp,
                    ),
                    DrugTimeDoseInput(
                      timeCounts: timeCounts,
                    ),
                    const SizedBox(
                      height: mediumPaddingTOp,
                    ),
                    DrugDurationInput(
                      bloc: context.read<DrugBloc>(),
                    ),
                    const SizedBox(
                      height: mediumPaddingTOp,
                    ),
                    const DrugWeekdaysInput(),
                    const SizedBox(
                      height: mediumPaddingTOp,
                    ),
                    const DrugTotalDoses(),
                    const SizedBox(
                      height: mediumPaddingTOp,
                    ),
                    const DrugTotalAlert(),
                    const SizedBox(
                      height: mediumPaddingTOp,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
