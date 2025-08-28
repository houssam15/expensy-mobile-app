import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../../../blocs/remote/bloc.dart";
import "expenses_list_recent_elements_preview_item_header.dart";
import "expenses_list_recent_element_preview_item_expense_categories_list/expenses_list_recent_element_preview_item_expense_categories_list.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItem extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItem(this.index,{super.key});

  final int index;

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyDashboardPresentationRemoteBloc>();
    final state = bloc.state;

    return ExpensyExpensesListItem(
        onTap: () => Navigator.of(context).pushNamed(
            ExpensyCommonAppRoutes.expensesListItemDetailsRoute,
            arguments: {
              "expenseId" : state.getRecentExpenses()[index].getId()
            }
        ),
        children: [
            ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemHeader(index),
            ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemExpenseCategoriesList(index),
          ]
    );
  }

}


