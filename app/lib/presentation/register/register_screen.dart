import 'package:another_flushbar/flushbar_helper.dart';
import 'package:app/application/blocs/register/register_bloc.dart';
import 'package:app/application/blocs/register/register_event.dart';
import 'package:app/application/blocs/register/register_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/constants/string_constanst.dart';
import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/application/widgets/ui_dropdown_bottom.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:app/di/service_locator.dart';
import 'package:app/domain/token/i_authenticate_repository.dart';
import 'package:app/infrastructure/models/bottom_item/bottom_item.dart';
import 'package:app/presentation/register/widgets/register_call_you.dart';
import 'package:app/presentation/register/widgets/register_check_terms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import '../../application/widgets/ui_primary_button.dart';
import '../../domain/core/form_validator.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(
        getIt<IAuthenticateRepository>(),
      ),
      child: const LoaderOverlay(child: Body()),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var isCheckedTerms = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UIAppbar(
        title: 'Register',
        showBadge: true,
      ),
      body: BlocListener<RegisterBloc, RegisterState>(
        listener: (context, state) {
          state.status?.map(
            initial: (_) {},
            loading: (_) {
              context.loaderOverlay.show();
            },
            success: (_) {
              context.loaderOverlay.hide();
              context.pop();
            },
            failure: (_) {
              context.loaderOverlay.hide();
              state.authFailure?.maybeMap(
                serverError: (err) => FlushbarHelper.createError(
                  message: err.errorMessage,
                ).show(context),
                orElse: () => context.pop(),
              );
            },
          );
        },
        child: Stack(
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
                        onChanged: (value) => context.read<RegisterBloc>().add(
                              InputFirstName(value),
                            ),
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
                        onChanged: (value) => context.read<RegisterBloc>().add(
                              InputEmail(value),
                            ),
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
                        onChanged: (value) {
                          context.read<RegisterBloc>().add(
                                InputPassword(value),
                              );
                        },
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
                      BlocBuilder<RegisterBloc, RegisterState>(
                        builder: (context, state) {
                          return UITextInput(
                            isPasswordType: true,
                            title: 'Repeat password',
                            onChanged: (value) {},
                            validator: (value) {
                              if (value.isEmpty) {
                                return StringConstants.emptyInput;
                              }
                              return mismatchedPassword(
                                value,
                                state.password ?? '',
                              ).fold(
                                (l) => 'Mismatch password',
                                (r) => null,
                              );
                            },
                          );
                        },
                      ),
                      const SizedBox(
                        height: paddingtTop,
                      ),
                      UIDropdownBottom(
                        title: 'Language',
                        onUpdateItem: (item) {
                          context
                              .read<RegisterBloc>()
                              .add(InputLanguageId(item.id ?? 0));
                        },
                        bottomItems: [
                          BottomItem(title: 'Polish', id: 0),
                          BottomItem(title: 'English', id: 1),
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
                  child: BlocBuilder<RegisterBloc, RegisterState>(
                    builder: (context, state) => UIButton(
                      width: 180,
                      title: 'Register',
                      onPressed: () {
                        if (!isCheckedTerms) {
                          FlushbarHelper.createError(
                            message: 'You must accept the regulations',
                          ).show(context);
                        }
                        if (formKey.currentState!.validate()) {
                          context
                              .read<RegisterBloc>()
                              .add(const SubmitRegister());
                        }
                      },
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
