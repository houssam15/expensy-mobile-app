import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../blocs/blocs.dart";
import "grouped_category_list_item_header.dart";
import "grouped_category_list_item_content/grouped_category_list_item_content.dart";

class ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItem extends StatelessWidget {

  const ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItem(this.index,{super.key});

  final int index;

  @override
  Widget build(BuildContext context) {

    return ExpensyExpensesListItem(
      expenseItemCardBackground: Colors.grey.withOpacity(0.2),
      elevation: 0,
      children: [
        ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItemHeader(index),
        ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItemContent(index)
      ]
    );
  }

}
