import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../../blocs/remote/bloc.dart";
import "expenses_list_recent_elements_preview_error.dart";
import "expenses_list_recent_element_preview_list.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreview extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.read<ExpensyDashboardPresentationRemoteBloc>().state.cantGetRecentExpenses()
        ? ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewError()
        : ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewList()
      ],
    );
  }

}
