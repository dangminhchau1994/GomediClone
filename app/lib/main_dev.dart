import 'package:app/application/app/app_view.dart';
import 'package:app/infrastructure/data/network/api/endpoints.dart';
import 'package:flutter/material.dart';
import 'application/config/app_config.dart';
import 'di/service_locator.dart';

void main() {
  AppConfig.create(
    appName: "Gomedi Dev",
    baseUrl: Endpoints.devUrl,
    flavor: Flavor.dev,
  );
  WidgetsFlutterBinding.ensureInitialized();
  // await setupLocator(AppConfig.create().baseUrl);
  runApp(const App());
}
