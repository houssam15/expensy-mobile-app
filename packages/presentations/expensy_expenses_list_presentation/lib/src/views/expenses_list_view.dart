import "pages/expenses_list_view/initial.dart";
import "pages/expenses_list_view/failed.dart";
import "pages/expenses_list_view/success.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../blocs/remote/bloc.dart";

class ExpensyExpensesListPresentationView extends StatelessWidget {
  const ExpensyExpensesListPresentationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensyExpensesListPresentationRemoteBloc,ExpensyExpensesListPresentationRemoteState>(
      builder: (context, state) {
        switch(state.getStatus()){
          case ExpensyExpensesListPresentationRemoteStatus.initial: return ExpensyExpensesListPresentationViewInitialPage();
          case ExpensyExpensesListPresentationRemoteStatus.failed: return ExpensyExpensesListPresentationViewFailedPage();
          case ExpensyExpensesListPresentationRemoteStatus.success: return ExpensyExpensesListPresentationViewSuccessPage();
        }
      },
    );
  }
}
