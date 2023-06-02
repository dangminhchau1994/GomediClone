import 'package:app/application/config/app_config.dart';
import 'package:app/application/theme/ui_theme.dart';
import 'package:app/di/service_locator.dart';
import 'package:app/infrastructure/repositories/authenticate_respository_impl.dart';
import 'package:app/presentation/login/login_screen.dart';
import 'package:app/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../presentation/onboarding/onboarding_screen.dart';

class App extends StatefulWidget {
  const App({
    super.key,
    this.appConfig,
  });

  final AppConfig? appConfig;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gomedi',
      theme: getAppTheme(context),
      home: const LoginScreen(),
    );
  }
}
