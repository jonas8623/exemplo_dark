
import 'package:exemplo_dark_mode/repository/theme_preferencie.dart';
import 'package:flutter/material.dart';

// ChangeNotifier serve para se comunicar para outros widgets
class ThemeModel extends ChangeNotifier {

  bool _isDark = false;
  ThemePreference _preferences = ThemePreference();
  bool get isDark => _isDark;

  // Quando meu construtor for gerado ele vai pegar o getPreferences
  ThemeModel() {
    _isDark = false;
    _preferences = ThemePreference();
    getPreferences();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }

  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

}