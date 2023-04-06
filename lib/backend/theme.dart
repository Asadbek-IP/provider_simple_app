import 'package:flutter/material.dart';

class MyTheme with ChangeNotifier {
  ThemeData theme = ThemeData.light();
  bool isDark = false;
  ThemeData get getTheme => theme;

  void changeThemeMode() {
    theme = isDark ? ThemeData.light() : ThemeData.dark();
    isDark = !isDark;
    notifyListeners();
  }
}
