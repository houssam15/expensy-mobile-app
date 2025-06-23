import 'package:expensy/routes.dart';
import 'package:expensy_firebase/expensy_firebase.dart';
import 'package:flutter/material.dart';
import "package:expensy_common/expensy_common.dart";
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);

  await ExpensyFirebase.ensureInitialization();

  runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<ExpensyCommonAppThemeBloc>(
              create: (_) => ExpensyCommonAppThemeBloc()
          ),
          BlocProvider<ExpensyCommonAuthenticationBloc>(
              create: (_) => ExpensyCommonAuthenticationBloc()..add(ExpensyCommonAuthenticationAppStarted())
          )
        ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  AppRouting? _appRouting;
  ExpensyCommonDarkTheme? _darkTheme;
  ExpensyCommonLightTheme? _lightTheme;

  AppRouting getAppRouting() {
    _appRouting ??= AppRouting();
    return _appRouting!;
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
    return BlocBuilder<ExpensyCommonAppThemeBloc,ExpensyCommonAppThemeState>(
      builder: (context, state) => MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: getDarkTheme().getThemeData(),
        theme: getLightTheme().getThemeData(),
        themeMode: state.themeMode,
        initialRoute: getAppRouting().getInitialRoute(),
        routes: getAppRouting().getRoutes(),
        home: BlocListener<ExpensyCommonAuthenticationBloc,ExpensyCommonAuthenticationState>(
            listener: (context,state){
              if(state.status == ExpensyCommonAuthenticationStatus.notAuthenticated){
                  Navigator.pushReplacementNamed(context, getAppRouting().getWelcomeRoute());
              }

              if(state.status == ExpensyCommonAuthenticationStatus.authenticated){
                  Navigator.pushReplacementNamed(context, getAppRouting().getDashboardRoute());
              }
            },
            child: getAppRouting().getInitialWidget()
        ),
      ),
    );
  }
}
