import 'package:app/application/utils/share_preferences.dart';
import 'package:app/infrastructure/network/api/endpoints.dart';
import 'package:flutter/material.dart';
import 'application/app/app_view.dart';
import 'application/config/app_config.dart';
import 'di/service_locator.dart';

Future<void> main() async {
  final appConfig = AppConfig.create(
    appName: "Gomedi Prod",
    baseUrl: Endpoints.prodUrl,
    flavor: Flavor.dev,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await SharePref().init();
  setupLocator(appConfig.baseUrl);
  runApp(App(appConfig: appConfig));
}
