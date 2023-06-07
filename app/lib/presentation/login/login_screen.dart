import 'dart:io';
import 'package:app/application/constants/route_names.dart';
import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/application/widgets/ui_primary_button.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:app/presentation/login/widgets/login_social_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UIAppbar(
        showBadge: false,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top * 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hello!',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Join us and enjoy your health!',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).padding.top * 2,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UIButton(
                  key: const Key('register'),
                  title: 'Register',
                  onPressed: () {
                    context.push(RouteNames.register);
                  },
                ),
                const SizedBox(
                  height: 14,
                ),
                UIButton(
                  key: const Key('login'),
                  isPrimaryButton: false,
                  title: 'Login',
                  onPressed: () {
                    context.push(RouteNames.loginForm);
                  },
                ),
                const SizedBox(
                  height: 14,
                ),
                LoginSocialButton(
                  key: const Key('register google key'),
                  title: 'Register z Google',
                  backgroundColor: const Color(0xFFDE5246),
                  iconPath: Assets.images.google,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 14,
                ),
                LoginSocialButton(
                  key: const Key('register facebook key'),
                  title: 'Register z Facebook',
                  backgroundColor: const Color(0xFF4267B2),
                  iconPath: Assets.images.facebook,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 14,
                ),
                Visibility(
                  visible: Platform.isIOS,
                  child: LoginSocialButton(
                    key: const Key('register apple key'),
                    title: 'Register z Apple',
                    backgroundColor: Colors.black,
                    iconPath: Assets.images.apple,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
