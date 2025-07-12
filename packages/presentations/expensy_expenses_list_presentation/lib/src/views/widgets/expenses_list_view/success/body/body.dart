import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../blocs/remote/bloc.dart";
import "body_item.dart";

class ExpensyExpensesListPresentationViewSuccessPageBody extends StatelessWidget {
  const ExpensyExpensesListPresentationViewSuccessPageBody({super.key});

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyExpensesListPresentationRemoteBloc>();
    final state = bloc.state;

    return Expanded(
      child: ListView.builder(
        itemCount: state.getExpensesList().length,
        itemBuilder: (context, index) => ExpensyExpensesListPresentationViewSuccessPageBodyItem(index),
      ),
    );
  }
}
