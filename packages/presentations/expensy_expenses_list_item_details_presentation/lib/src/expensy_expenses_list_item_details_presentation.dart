import "package:flutter/material.dart";
import "package:expensy_expenses_list_item_details_presentation/src/config/config.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "blocs/blocs.dart";
import "views/expense_list_item_details.dart";

class ExpensyExpensesListItemDetailsPresentation extends StatelessWidget {

  ExpensyExpensesListItemDetailsPresentation({super.key});

  ExpensyExpensesListItemDetailsPresentationConfig? _config;

  ExpensyExpensesListItemDetailsPresentationConfig getConfig() {
    _config ??= ExpensyExpensesListItemDetailsPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return MultiBlocProvider(
        providers: [
          BlocProvider<ExpensyExpensesListItemDetailsPresentationRemoteBloc>(
              create: (context) => ExpensyExpensesListItemDetailsPresentationRemoteBloc()
                                   ..add(ExpensyExpensesListItemDetailsPresentationRemoteStarted(context,expenseId: args['expenseId']))
          )
        ],
        child: ExpensyExpensesListItemDetailsPresentationView()
    );
  }
}
