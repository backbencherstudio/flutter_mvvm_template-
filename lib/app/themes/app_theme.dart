import 'package:flutter/material.dart';
import 'light_theme.dart';
import 'dark_theme.dart';

class AppTheme {
  static ThemeData light = LightTheme.lightTheme;
  static ThemeData dark = DarkTheme.darkTheme;

  static ThemeData getTheme(Brightness brightness) {
    return brightness == Brightness.dark ? dark : light;
  }
}
