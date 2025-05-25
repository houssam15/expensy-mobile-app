import "package:flutter/material.dart";
import "package:expensy_splash_presentation/src/config/config.dart";
import "blocs/remote/bloc.dart";
import "views/views.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class ExpensySplashPresentation extends StatelessWidget {
  ExpensySplashPresentation({super.key});

  ExpensySplashPresentationConfig? _config;

  ExpensySplashPresentationConfig getConfig() {
    _config ??= ExpensySplashPresentationConfig();
    return _config!;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpensySplashPresentationRemoteBloc>(
        create: (context) => ExpensySplashPresentationRemoteBloc(),
        child: ExpensySplashPresentationView(),
    );
  }
}