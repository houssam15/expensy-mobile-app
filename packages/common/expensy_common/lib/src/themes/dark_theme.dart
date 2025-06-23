import 'package:flutter/material.dart';

import 'base_theme.dart';
import 'extensions.dart';

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
    ),
    extensions: <ThemeExtension>[
      const ExpensyBackButtonColors(
          backButtonBackground: const Color(0x172537FF),
          buttonColor: Colors.white
      ),
      const ExpensySignInColors(
          extraOptionBackgroundButtonColor : Colors.black,
          extraOptionsButtonTextColor : Colors.white,
          goToSignUpDonNotHaveAccountColor : Colors.white,
      ),
      const ExpensySignUpColors(
          extraOptionBackgroundButtonColor : Colors.black,
          extraOptionsButtonTextColor : Colors.white,
          goToSignUpDonNotHaveAccountColor : Colors.white
      )
    ]
  );

  ThemeData getThemeData() {
    return _themeData;
  }




}
