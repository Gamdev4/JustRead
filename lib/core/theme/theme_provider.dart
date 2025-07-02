import 'package:flutter/material.dart';
import 'package:justread/core/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = true;
  ThemeData _themeData = darkMode;

  bool get isDarkMode => _isDarkMode;
  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      _isDarkMode = true;
      themeData = darkMode;
    } else {
      _isDarkMode = false;
      themeData = lightMode;
    }
  }
}