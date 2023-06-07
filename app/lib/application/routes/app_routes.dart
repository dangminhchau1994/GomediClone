import 'package:app/application/constants/route_names.dart';
import 'package:app/presentation/home/home_screen.dart';
import 'package:app/presentation/login/login_screen.dart';
import 'package:app/presentation/login_form/login_form_screen.dart';
import 'package:app/presentation/onboarding/onboarding_screen.dart';
import 'package:app/presentation/register/register_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final GoRouter _router = GoRouter(
    initialLocation: RouteNames.login,
    routes: [
      GoRoute(
        path: RouteNames.home,
        builder: (context, state) => const HomeScreen(),
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
        builder: (context, state) => const OnboardingScreen(),
      )
    ],
  );
  GoRouter get router => _router;
}
