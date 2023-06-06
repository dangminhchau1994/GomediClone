// import 'package:app/application/prefs/share_preferences_key.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharePref {
//   static late SharedPreferences prefs;

//   SharePref() {
//     getInstance();
//   }

//   Future<SharedPreferences> getInstance() async {
//     prefs = await SharedPreferences.getInstance();
//     return prefs;
//   }

//   void setToken(String value) async {
//     await prefs.setString(SharePreferencesKey.token, value);
//   }

//   String getToken() => prefs.getString(SharePreferencesKey.token) ?? '';
// }
