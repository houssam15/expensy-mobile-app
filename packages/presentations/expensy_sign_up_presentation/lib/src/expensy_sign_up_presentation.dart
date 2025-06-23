import "package:flutter/material.dart";
import "package:expensy_sign_up_presentation/src/config/config.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "blocs/remote/bloc.dart";
import 'views/views.dart';

class ExpensySignUpPresentation extends StatelessWidget {
  ExpensySignUpPresentation({super.key});

  ExpensySignUpPresentationConfig? _config;

  ExpensySignUpPresentationConfig getConfig() {
    _config ??= ExpensySignUpPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExpensySignUpPresentationRemoteBloc>(
            create: (context) => ExpensySignUpPresentationRemoteBloc()..add(ExpensySignUpPresentationRemoteStarted(context))
        )
      ],
      child: ExpensySignUpPresentationView()
    );
  }
}
