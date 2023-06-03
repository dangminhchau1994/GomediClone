import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/application/widgets/ui_dropdown_bottom.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:app/infrastructure/models/bottom_item/bottom_item.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UIAppbar(
        title: 'Register',
        showBadge: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: kMargin,
              vertical: kMargin,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'How should we call you?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: paddingtTop,
                  ),
                  UITextInput(
                    title: 'Name',
                    onChanged: (value) {},
                    validator: '',
                  ),
                  const SizedBox(
                    height: paddingtTop,
                  ),
                  UITextInput(
                    title: 'Email',
                    onChanged: (value) {},
                    validator: '',
                  ),
                  const SizedBox(
                    height: paddingtTop,
                  ),
                  UITextInput(
                    isPasswordType: true,
                    title: 'Password',
                    onChanged: (value) {},
                    validator: '',
                  ),
                  const SizedBox(
                    height: paddingtTop,
                  ),
                  UITextInput(
                    isPasswordType: true,
                    title: 'Repeat password',
                    onChanged: (value) {},
                    validator: '',
                  ),
                  const SizedBox(
                    height: paddingtTop,
                  ),
                  UIDropdownBottom(
                    title: 'Language',
                    height: 300,
                    bottomItems: [
                      BottomItem(title: 'Polish', id: 1),
                      BottomItem(title: 'English', id: 0),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
