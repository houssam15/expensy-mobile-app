import "pages/sign_in_view/initial.dart";
import "pages/sign_in_view/failed.dart";
import "pages/sign_in_view/success.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../blocs/remote/bloc.dart";

class ExpensySignInPresentationView extends StatelessWidget {
  const ExpensySignInPresentationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensySignInPresentationRemoteBloc,ExpensySignInPresentationRemoteState>(
        builder: (context, state) {
          switch(state.getStatus()){
            case ExpensySignInPresentationRemoteStatus.initial: return ExpensySignInPresentationViewInitialPage();
            case ExpensySignInPresentationRemoteStatus.failed: return ExpensySignInPresentationViewFailedPage();
            case ExpensySignInPresentationRemoteStatus.success: return ExpensySignInPresentationViewSuccessPage();
          }
        },
    );
  }
}
