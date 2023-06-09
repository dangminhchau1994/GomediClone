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
      body: Center(
        child: Text('My medications'),
      ),
    );
  }
}
