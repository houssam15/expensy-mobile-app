import 'package:flutter/material.dart';

import 'base_theme.dart';

class ExpensyCommonDarkTheme {
  ThemeData _themeData = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: Colors.black,
      onPrimary: Colors.white,
        secondary: Colors.grey,
        surface: Colors.yellow
    ),
      textTheme: ExpensyCommonBaseTheme.buildGoogleFontsTextTheme(
        ThemeData.light().textTheme,
        Colors.white,
        Colors.grey[600]!,
      )
  );

  ThemeData getThemeData() {
    return _themeData;
  }


}
