import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "blocs/remote/bloc.dart";
import "views/views.dart";

class ExpensyExpensesAddNewExpenseFormPresentation extends StatelessWidget {
  ExpensyExpensesAddNewExpenseFormPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RemoteBloc>(
            create: (context) => RemoteBloc()..add(RemoteAddNewExpenseRequested(context))
        )
      ],
      child: ExpensyExpensesAddNewExpenseFormView()
    );
  }
}
