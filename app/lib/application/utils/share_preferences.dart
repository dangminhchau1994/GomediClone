import 'package:app/application/constants/string_constanst.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePref {
  static SharedPreferences? _sharedPrefs;

  factory SharePref() => SharePref._internal();

  SharePref._internal();

  Future<void> init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  String get token => _sharedPrefs?.getString(StringConstants.token) ?? "";

  String get onboarding =>
      _sharedPrefs?.getString(StringConstants.onboarding) ?? "";

  void setToken(String value) {
    _sharedPrefs?.setString(StringConstants.token, value);
  }

  void setOnboarding(String value) {
    _sharedPrefs?.setString(StringConstants.onboarding, value);
  }
}
