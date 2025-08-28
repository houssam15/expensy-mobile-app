import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../../../blocs/remote/bloc.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemHeader extends StatelessWidget {

  const ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemHeader(this.index,{super.key});

  final int index;

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyDashboardPresentationRemoteBloc>();
    final state = bloc.state;

    return ExpensyExpensesListItemHeader(
      createdAt: state.getRecentExpenses()[index].getCreatedAt()?.formatToMonthDay() ?? "__/__/____",
      total: state.getRecentExpenses()[index].getTotal()
    );
  }

}
