import 'package:expensy/routes.dart';
import 'package:flutter/material.dart';
import "package:expensy_common/expensy_common.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  AppRoutes? _appRoutes;
  ExpensyCommonDarkTheme? _darkTheme;
  ExpensyCommonLightTheme? _lightTheme;

  AppRoutes getAppRoutes() {
    _appRoutes ??= AppRoutes();
    return _appRoutes!;
  }

  ExpensyCommonDarkTheme getDarkTheme() {
    _darkTheme ??= ExpensyCommonDarkTheme();
    return _darkTheme!;
  }

  ExpensyCommonLightTheme getLightTheme() {
    _lightTheme ??= ExpensyCommonLightTheme();
    return _lightTheme!;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: getDarkTheme().getThemeData(),
      theme: getLightTheme().getThemeData(),
      initialRoute: getAppRoutes().getInitialRoute(),
      routes: getAppRoutes().getRoutes(),
      home: getAppRoutes().getInitialWidget(),
    );
  }
}
