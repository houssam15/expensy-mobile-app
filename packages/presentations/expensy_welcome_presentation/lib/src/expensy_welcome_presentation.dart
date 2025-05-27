import "package:expensy_welcome_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "views/views.dart";

class ExpensyWelcomePresentation extends StatelessWidget {
  ExpensyWelcomePresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
          BlocProvider<ExpensyWelcomePresentationRemoteBloc>(
              create: (context) => ExpensyWelcomePresentationRemoteBloc()..add(ExpensyWelcomePresentationRemoteStarted(context))
          )
      ],
      child: ExpensyWelcomePresentationView(),
    );
  }
}
