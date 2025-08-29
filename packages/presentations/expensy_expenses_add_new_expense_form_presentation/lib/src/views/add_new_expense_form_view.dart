import "package:expensy_expenses_add_new_expense_form_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "pages/add_new_expense_form_view/success.dart";

class ExpensyExpensesAddNewExpenseFormView extends StatelessWidget {
  const ExpensyExpensesAddNewExpenseFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RemoteBloc,RemoteState>(
        builder: (context, state) => ExpensyExpensesAddNewExpenseFormViewSuccessPage(),
    );
  }
}
