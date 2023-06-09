import 'package:app/application/blocs/login_form/auth_bloc.dart';
import 'package:app/application/constants/route_names.dart';
import 'package:app/di/service_locator.dart';
import 'package:app/domain/token/i_authenticate_repository.dart';
import 'package:app/presentation/main/main_screen.dart';
import 'package:app/presentation/login/login_screen.dart';
import 'package:app/presentation/login_form/login_form_screen.dart';
import 'package:app/presentation/onboarding/onboarding_screen.dart';
import 'package:app/presentation/register/register_screen.dart';
import 'package:app/presentation/splash/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final GoRouter _router = GoRouter(
    initialLocation: RouteNames.splash,
    routes: [
      GoRoute(
        path: RouteNames.home,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: RouteNames.loginForm,
        builder: (context, state) => const LoginFormScreen(),
      ),
      GoRoute(
        path: RouteNames.register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: RouteNames.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RouteNames.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: RouteNames.splash,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthBloc(
            getIt<IAuthenticateRepository>(),
          ),
          child: const SplashScreen(),
        ),
      )
    ],
  );
  GoRouter get router => _router;
}
