import "package:expensy_welcome_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "pages/welcome_view/failed.dart";
import "pages/welcome_view/initial.dart";
import "pages/welcome_view/success.dart";

class ExpensyWelcomePresentationView extends StatelessWidget {
  const ExpensyWelcomePresentationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensyWelcomePresentationRemoteBloc,ExpensyWelcomePresentationRemoteState>(
        builder: (context, state) {
          switch(state.status){
            case ExpensyWelcomePresentationRemoteStatus.initial: return ExpensyWelcomePresentationViewInitialPage();
            case ExpensyWelcomePresentationRemoteStatus.failed: return ExpensyWelcomePresentationViewFailedPage();
            case ExpensyWelcomePresentationRemoteStatus.success: return ExpensyWelcomePresentationViewSuccessPage();
          }
        },
    );
  }
}
