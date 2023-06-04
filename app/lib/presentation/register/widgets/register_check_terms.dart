import 'package:flutter/material.dart';

class RegisterCheckTerms extends StatelessWidget {
  const RegisterCheckTerms({
    super.key,
    this.onChecked,
    this.isChecked,
  });

  final Function(bool isChecked)? onChecked;
  final bool? isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            onChecked!(value!);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'I agree with the ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.black),
                ),
                TextSpan(
                  text: ' Terms of service ',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.lightBlue,
                        decoration: TextDecoration.underline,
                      ),
                ),
                TextSpan(
                  text: ' and ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.black),
                ),
                TextSpan(
                  text: ' Privacy policy',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.lightBlue,
                        decoration: TextDecoration.underline,
                      ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
