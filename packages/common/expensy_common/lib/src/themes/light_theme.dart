import 'package:flutter/material.dart';

import 'base_theme.dart';
import 'extensions.dart';

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
    ),
    extensions: <ThemeExtension<dynamic>>[
      const ExpensyBackButtonColors(
          backButtonBackground: Color(0xDCEBEDFF),
          buttonColor: Colors.black
      ),
      const ExpensySignInColors(
          extraOptionBackgroundButtonColor : Colors.white,
          extraOptionsButtonTextColor : Colors.black,
          goToSignUpDonNotHaveAccountColor : Colors.black,
      ),
      const ExpensySignUpColors(
          extraOptionBackgroundButtonColor : Colors.white,
          extraOptionsButtonTextColor : Colors.black,
          goToSignUpDonNotHaveAccountColor : Colors.black
      )
    ]
  );

  ThemeData getThemeData() {
    return _themeData;
  }
}

