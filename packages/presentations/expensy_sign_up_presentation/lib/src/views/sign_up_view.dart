import "pages/sign_up_view/initial.dart";
import "pages/sign_up_view/failed.dart";
import "pages/sign_up_view/success.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../blocs/remote/bloc.dart";

class ExpensySignUpPresentationView extends StatelessWidget {
  const ExpensySignUpPresentationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensySignUpPresentationRemoteBloc,ExpensySignUpPresentationRemoteState>(
        builder: (context, state) {
          switch(state.getStatus()){
            case ExpensySignUpPresentationRemoteStatus.initial: return ExpensySignUpPresentationViewInitialPage();
            case ExpensySignUpPresentationRemoteStatus.failed: return ExpensySignUpPresentationViewFailedPage();
            case ExpensySignUpPresentationRemoteStatus.success: return ExpensySignUpPresentationViewSuccessPage();
          }
        },
    );
  }
}
