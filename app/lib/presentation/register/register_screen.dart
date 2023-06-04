import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/constants/string_constanst.dart';
import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/application/widgets/ui_dropdown_bottom.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:app/infrastructure/models/bottom_item/bottom_item.dart';
import 'package:app/presentation/register/widgets/register_call_you.dart';
import 'package:app/presentation/register/widgets/register_check_terms.dart';
import 'package:flutter/material.dart';
import '../../application/widgets/ui_primary_button.dart';
import '../../domain/core/form_validator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var isCheckedTerms = false;
  var formKey = GlobalKey<FormState>();

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
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RegisterCallYou(),
                    const SizedBox(
                      height: paddingtTop,
                    ),
                    UITextInput(
                      title: 'Name',
                      onChanged: (value) {},
                      validator: (value) {
                        if (value.isEmpty) {
                          return StringConstants.emptyInput;
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: paddingtTop,
                    ),
                    UITextInput(
                      title: 'Email',
                      onChanged: (value) {},
                      validator: (value) {
                        if (value.isEmpty) {
                          return StringConstants.emptyInput;
                        }
                        return invalidEmail(value).fold(
                          (l) => 'Please enter correct email',
                          (r) => null,
                        );
                      },
                    ),
                    const SizedBox(
                      height: paddingtTop,
                    ),
                    UITextInput(
                      isPasswordType: true,
                      title: 'Password',
                      onChanged: (value) {},
                      validator: (value) {
                        if (value.isEmpty) {
                          return StringConstants.emptyInput;
                        }
                        return invalidPassword(value).fold(
                          (l) =>
                              'Password must contain capital, special character and also length greater than 8',
                          (r) => null,
                        );
                      },
                    ),
                    const SizedBox(
                      height: paddingtTop,
                    ),
                    UITextInput(
                      isPasswordType: true,
                      title: 'Repeat password',
                      onChanged: (value) {},
                      validator: (value) {
                        if (value.isEmpty) {
                          return StringConstants.emptyInput;
                        }
                        return invalidPassword(value).fold(
                          (l) =>
                              'Password must contain capital, special character and also length greater than 8',
                          (r) => null,
                        );
                      },
                    ),
                    const SizedBox(
                      height: paddingtTop,
                    ),
                    UIDropdownBottom(
                      title: 'Language',
                      onUpdateItem: (item) {},
                      bottomItems: [
                        BottomItem(title: 'Polish', id: 1),
                        BottomItem(title: 'English', id: 0),
                      ],
                    ),
                    const SizedBox(
                      height: paddingtTop,
                    ),
                    RegisterCheckTerms(
                      isChecked: isCheckedTerms,
                      onChecked: (isChecked) {
                        setState(() {
                          isCheckedTerms = isChecked;
                        });
                      },
                    )
                  ],
                ),
              ),
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
                child: UIButton(
                  width: 180,
                  title: 'Register',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
