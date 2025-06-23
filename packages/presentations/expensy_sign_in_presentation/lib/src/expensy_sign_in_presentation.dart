import "package:flutter/material.dart";
import "package:expensy_sign_in_presentation/src/config/config.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "blocs/remote/bloc.dart";
import 'views/views.dart';

class ExpensySignInPresentation extends StatelessWidget {
  ExpensySignInPresentation({super.key});

  ExpensySignInPresentationConfig? _config;

  ExpensySignInPresentationConfig getConfig() {
    _config ??= ExpensySignInPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExpensySignInPresentationRemoteBloc>(
            create: (context) => ExpensySignInPresentationRemoteBloc()..add(ExpensySignInPresentationRemoteStarted(context))
        )
      ],
      child: ExpensySignInPresentationView(),
    );
  }
}
