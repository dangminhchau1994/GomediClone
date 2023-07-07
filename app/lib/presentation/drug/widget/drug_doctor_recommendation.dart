import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/blocs/drug/drug_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/widgets/ui_text_input.dart';

class DrugDoctorRecommendation extends StatelessWidget {
  const DrugDoctorRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UITextInput(
          maxLine: 3,
          title: 'Doctoc"s recommendation',
          textInputType: TextInputType.text,
          onChanged: (value) {
            if (value.isEmpty) return;
            context
                .read<DrugBloc>()
                .add(DrugEvent.addDoctorRecommendation(value));
          },
        ),
      ],
    );
  }
}
