import 'package:app/application/config/app_config.dart';
import 'package:app/application/routes/app_routes.dart';
import 'package:app/application/theme/ui_theme.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Gomedi',
      theme: getAppTheme(context),
      routerDelegate: AppRoutes().router.routerDelegate,
      routeInformationProvider: AppRoutes().router.routeInformationProvider,
      routeInformationParser: AppRoutes().router.routeInformationParser,
    );
  }
}
