import 'package:flutter/material.dart';

class RegisterCallYou extends StatelessWidget {
  const RegisterCallYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'How should we call you?',
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
            color: Colors.black,
          ),
    );
  }
}
