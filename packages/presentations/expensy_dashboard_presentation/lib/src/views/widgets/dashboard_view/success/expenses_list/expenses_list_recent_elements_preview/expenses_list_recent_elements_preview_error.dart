import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../../blocs/remote/bloc.dart";
import "expenses_list_recent_element_preview_item/expenses_list_recent_elements_preview_item.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewError extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewError({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("No recent expenses found."),
    );
  }

}
