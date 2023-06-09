import 'package:app/application/blocs/login_form/auth_bloc.dart';
import 'package:app/application/blocs/login_form/auth_event.dart';
import 'package:app/application/blocs/login_form/auth_state.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../application/constants/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(const CheckStatus());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) async {
          if (state.authStatus is UnOnboarding) {
            context.go(RouteNames.onboarding);
          } else {
            if (state.authStatus is Authenticated) {
              context.go(RouteNames.main);
            } else {
              context.go(RouteNames.login);
            }
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.logoTextPng.path,
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
