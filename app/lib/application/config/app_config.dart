import 'package:flutter/material.dart';

enum Flavor { prod, dev }

class AppConfig {
  String appName = "";
  String baseUrl = "";
  Flavor flavor = Flavor.dev;

  static AppConfig shared = AppConfig.create();
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  factory AppConfig.create({
    String appName = "",
    String baseUrl = "",
    Flavor flavor = Flavor.dev,
  }) {
    return shared = AppConfig(
      appName,
      baseUrl,
      flavor,
    );
  }

  AppConfig(
    this.appName,
    this.baseUrl,
    this.flavor,
  );
}
