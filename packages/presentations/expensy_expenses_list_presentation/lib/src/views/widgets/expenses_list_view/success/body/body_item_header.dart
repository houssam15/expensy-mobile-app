import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../../blocs/remote/bloc.dart";

class ExpensyExpensesListPresentationViewSuccessPageBodyItemHeader extends StatelessWidget {
  const ExpensyExpensesListPresentationViewSuccessPageBodyItemHeader(this.index,{super.key});

  final int index;

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyExpensesListPresentationRemoteBloc>();
    final state = bloc.state;

    return ExpensyExpensesListItemHeader(
        createdAt: "${state.getExpensesList()[index].getCreatedAt()?.formatToMonthDay()}",
        total: state.getExpensesList()[index].getTotal()
    );

  }
}
