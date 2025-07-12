import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "expenses_list_recent_elements_preview_item_header.dart";
import "expenses_list_recent_element_preview_item_expense_categories_list/expenses_list_recent_element_preview_item_expense_categories_list.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItem extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItem(this.index,{super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return ExpensyExpensesListItem(
          children: [
            ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemHeader(index),
            ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemExpenseCategoriesList(index),
          ]
    );
  }

}


