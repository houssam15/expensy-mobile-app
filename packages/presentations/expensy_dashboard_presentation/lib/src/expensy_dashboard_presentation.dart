import "package:flutter/material.dart";
import "package:expensy_dashboard_presentation/src/config/config.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "blocs/remote/bloc.dart";
import "views/dashboard_view.dart";

class ExpensyDashboardPresentation extends StatelessWidget {
  ExpensyDashboardPresentation({super.key});

  ExpensyDashboardPresentationConfig? _config;

  ExpensyDashboardPresentationConfig getConfig() {
    _config ??= ExpensyDashboardPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExpensyDashboardPresentationRemoteBloc>(
            create: (context) => ExpensyDashboardPresentationRemoteBloc()..add(ExpensyDashboardPresentationRemoteStarted(context))
        )
      ],
      child: ExpensyDashboardPresentationView(),
    );
  }
}
