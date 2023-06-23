import 'package:another_flushbar/flushbar_helper.dart';
import 'package:app/application/blocs/login_form/auth_bloc.dart';
import 'package:app/application/blocs/login_form/auth_event.dart';
import 'package:app/application/blocs/login_form/auth_state.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/theme/ui_color.dart';
import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/application/widgets/ui_primary_button.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:app/di/service_locator.dart';
import 'package:app/domain/core/form_validator.dart';
import 'package:app/domain/token/i_authenticate_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import '../../application/constants/route_names.dart';
import '../../application/constants/string_constanst.dart';

class LoginFormScreen extends StatelessWidget {
  const LoginFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UIAppbar(
        showArrow: true,
        showBadge: false,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: kMargin,
          vertical: paddingtTop,
        ),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.status?.map(
              initial: (_) {},
              loading: (_) {
                context.loaderOverlay.show();
              },
              success: (_) {
                context.loaderOverlay.hide();
                context.go(RouteNames.home);
              },
              failure: (_) {
                context.loaderOverlay.hide();
                state.failure?.maybeMap(
                  serverError: (err) => FlushbarHelper.createError(
                    message: err.errorMessage,
                  ).show(context),
                  orElse: () => null,
                );
              },
            );
          },
          builder: (context, state) {
            return Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UITextInput(
                      isEditType: false,
                      isPasswordType: false,
                      title: 'Email',
                      onChanged: (value) => context
                          .read<AuthBloc>()
                          .add(AuthEvent.inputEmail(value)),
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
                      title: 'Password',
                      isPasswordType: true,
                      onChanged: (value) => context
                          .read<AuthBloc>()
                          .add(AuthEvent.inputPassword(value)),
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
                      height: mediumPaddingTOp,
                    ),
                    UIButton(
                      title: 'Login',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.read<AuthBloc>().add(const SubmitLogin());
                        }
                      },
                    ),
                    const SizedBox(
                      height: paddingtTop,
                    ),
                    UIButton(
                      title: 'Register',
                      isPrimaryButton: false,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: paddingtTop,
                    ),
                    Text(
                      'I forgot my password',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: UIColors.blue,
                            decoration: TextDecoration.underline,
                          ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
