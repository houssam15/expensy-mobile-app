import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../../blocs/remote/bloc.dart";
import "expenses_list_recent_element_preview_item/expenses_list_recent_elements_preview_item.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewList extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: context.read<ExpensyDashboardPresentationRemoteBloc>().state.getRecentExpenses().length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) =>
              ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItem(index),
    );
  }

}
