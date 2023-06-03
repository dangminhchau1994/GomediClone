import 'package:app/application/constants/route_names.dart';
import 'package:app/presentation/login/login_screen.dart';
import 'package:app/presentation/onboarding/onboarding_screen.dart';
import 'package:app/presentation/register/register_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final GoRouter _router = GoRouter(
    initialLocation: RouteNames.login,
    routes: [
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
