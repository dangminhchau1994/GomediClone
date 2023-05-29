import 'package:app/application/app/app_view.dart';
import 'package:flutter/material.dart';

import 'application/config/app_config.dart';

void main() {
  AppConfig.create(
    appName: "Gomedi Prod",
    baseUrl: "http://vps-5a2f7596.vps.ovh.net/api/",
    flavor: Flavor.dev,
  );

  runApp(const App());
}
