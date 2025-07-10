import "package:flutter/material.dart";
import "package:expensy_expenses_list_presentation/src/config/config.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "blocs/remote/bloc.dart";
import "views/expenses_list_view.dart";

class ExpensyExpensesListPresentation extends StatelessWidget {
  ExpensyExpensesListPresentation({super.key});

  ExpensyExpensesListPresentationConfig? _config;

  ExpensyExpensesListPresentationConfig getConfig() {
    _config ??= ExpensyExpensesListPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExpensyExpensesListPresentationRemoteBloc>(
            create: (context) => ExpensyExpensesListPresentationRemoteBloc()..add(ExpensyExpensesListPresentationRemoteStarted(context))
        )
      ],
      child: ExpensyExpensesListPresentationView(),
    );
  }
}
