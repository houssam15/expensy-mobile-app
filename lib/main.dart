import 'package:expensy/routes.dart';
import 'package:expensy_firebase/expensy_firebase.dart';
import 'package:flutter/material.dart';
import "package:expensy_common/expensy_common.dart";
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  await ExpensyFirebase.ensureInitialization();

  runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<ExpensyCommonAppThemeBloc>(
              create: (_) => ExpensyCommonAppThemeBloc()
          ),
          BlocProvider<ExpensyCommonAuthenticationBloc>(
              create: (_) => ExpensyCommonAuthenticationBloc(navigatorKey)
                ..add(ExpensyCommonAuthenticationAppStarted())
                ..add(ExpensyCommonAuthenticationAuthStateListenerRegistrationRequested())
          ),
          BlocProvider<ExpensyCommonAppContextBloc>(
              create: (_) => ExpensyCommonAppContextBloc(
                  ExpensyCommonAppContextState(
                    navigatorKey: navigatorKey
                  )
              )
          ),

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
    return BlocListener<ExpensyCommonAuthenticationBloc, ExpensyCommonAuthenticationState>(
      listener: (context, state) {
        final nav = navigatorKey.currentState;
        if (state.status == ExpensyCommonAuthenticationStatus.authenticated) {
          nav?.pushReplacementNamed(getAppRouting().getMainLayoutRoute());
        } else if (state.status == ExpensyCommonAuthenticationStatus.notAuthenticated) {
          nav?.pushReplacementNamed(getAppRouting().getWelcomeRoute());
        }
      },
      child: BlocBuilder<ExpensyCommonAppThemeBloc, ExpensyCommonAppThemeState>(
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: navigatorKey,
          darkTheme: getDarkTheme().getThemeData(),
          theme: getLightTheme().getThemeData(),
          themeMode: state.themeMode,
          home: getAppRouting().getInitialWidget(),
          // You can still use named routes:
          routes: getAppRouting().getRoutes(),
        ),
      ),
    );
  }
}
