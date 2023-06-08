import 'package:app/infrastructure/network/api/endpoints.dart';
import 'package:flutter/material.dart';
import 'application/app/app_view.dart';
import 'application/config/app_config.dart';
import 'di/service_locator.dart';

void main() {
  final appConfig = AppConfig.create(
    appName: "Gomedi Dev",
    baseUrl: Endpoints.devUrl,
    flavor: Flavor.dev,
  );
  setupLocator(appConfig.baseUrl);
  runApp(App(appConfig: appConfig));
}
