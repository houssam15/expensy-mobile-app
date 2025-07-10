import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../../../blocs/remote/bloc.dart";
import "../../../../../../../extensions/extensions.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemHeader extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemHeader(this.index,{super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
            "${context.read<ExpensyDashboardPresentationRemoteBloc>().state.getRecentExpenses()[index].getCreatedAt()?.formatToMonthDay()}",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.grey
            ),
        ),
        Text(
            "-\$ ${context.read<ExpensyDashboardPresentationRemoteBloc>().state.getRecentExpenses()[index].getTotal()}",
            style: TextStyle(
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 1
                  ..color = Theme.of(context).extension<ExpensyDashboardColors>()?.recentElementsPreviewItem ?? Colors.transparent,
            ),
        ),
      ]
    );
  }

}
