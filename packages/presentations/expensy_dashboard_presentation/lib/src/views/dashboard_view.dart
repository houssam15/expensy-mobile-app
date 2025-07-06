import "pages/dashboard_view/initial.dart";
import "pages/dashboard_view/failed.dart";
import "pages/dashboard_view/success.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../blocs/remote/bloc.dart";

class ExpensyDashboardPresentationView extends StatelessWidget {
  const ExpensyDashboardPresentationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensyDashboardPresentationRemoteBloc,ExpensyDashboardPresentationRemoteState>(
        builder: (context, state) {
          switch(state.getStatus()){
            case ExpensyDashboardPresentationRemoteStatus.initial: return ExpensyDashboardPresentationViewInitialPage();
            case ExpensyDashboardPresentationRemoteStatus.failed: return ExpensyDashboardPresentationViewFailedPage();
            case ExpensyDashboardPresentationRemoteStatus.success: return ExpensyDashboardPresentationViewSuccessPage();
          }
        },
    );
  }
}
