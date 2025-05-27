import 'package:flutter/material.dart';

import 'base_theme.dart';

class ExpensyCommonLightTheme {
  ThemeData _themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
       primary: Colors.white,
       onPrimary: Colors.black,
       secondary: Colors.grey,
       surface: Colors.yellow
    ),
    textTheme: ExpensyCommonBaseTheme.buildGoogleFontsTextTheme(
      ThemeData.light().textTheme,
      Colors.black87,
      Colors.grey,
    )
  );

  ThemeData getThemeData() {
    return _themeData;
  }
}