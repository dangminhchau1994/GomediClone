import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/application/widgets/ui_table_calendar.dart';
import 'package:flutter/material.dart';

class MyMedicationScreen extends StatefulWidget {
  const MyMedicationScreen({super.key});

  @override
  State<MyMedicationScreen> createState() => _MyMedicationScreenState();
}

class _MyMedicationScreenState extends State<MyMedicationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: UIAppbar(
        showBadge: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UITableCalendar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
