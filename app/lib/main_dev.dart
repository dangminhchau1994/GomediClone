import 'package:app/application/app/app_view.dart';
import 'package:flutter/material.dart';

import 'application/config/app_config.dart';

void main() {
  AppConfig.create(
    appName: "Gomedi Dev",
    baseUrl: "http://gomedi-qa.eu-central-1.elasticbeanstalk.com/api/",
    flavor: Flavor.dev,
  );

  runApp(const App());
}
