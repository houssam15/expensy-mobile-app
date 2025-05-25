import "package:expensy_splash_presentation/src/views/pages/success.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../blocs/remote/bloc.dart";

class ExpensySplashPresentationView extends StatelessWidget {
  const ExpensySplashPresentationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensySplashPresentationRemoteBloc,ExpensySplashPresentationRemoteState>(
      builder: (context,state) => Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: ExpensySplashPresentationViewSuccessPage(),
      ),
    );
  }
}
