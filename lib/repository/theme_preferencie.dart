
import 'package:shared_preferences/shared_preferences.dart';

class ThemePreference {

  static const preferenceKey = 'key';

  setTheme(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(preferenceKey, value);
  }

  getTheme() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(preferenceKey);
  }

}