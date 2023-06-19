import 'package:app/infrastructure/network/api/endpoints.dart';
import 'package:flutter/material.dart';
import 'application/app/app_view.dart';
import 'application/config/app_config.dart';
import 'application/utils/share_preferences.dart';
import 'di/service_locator.dart';

void main() async {
  final navigatorKey = GlobalKey<NavigatorState>();
  final appConfig = AppConfig.create(
    appName: "Gomedi Dev",
    baseUrl: Endpoints.devUrl,
    flavor: Flavor.dev,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await SharePref().init();
  setupLocator(appConfig.baseUrl, navigatorKey);
  runApp(App(
    appConfig: appConfig,
    navigatorKey: navigatorKey,
  ));
}
