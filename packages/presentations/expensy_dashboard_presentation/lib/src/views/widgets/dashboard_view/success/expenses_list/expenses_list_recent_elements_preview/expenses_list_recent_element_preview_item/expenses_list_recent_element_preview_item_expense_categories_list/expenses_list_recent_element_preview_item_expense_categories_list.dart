import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../../../../blocs/remote/bloc.dart";
import "expenses_list_recent_element_preview_item_expense_categories_list_item.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemExpenseCategoriesList extends StatelessWidget {

  const ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemExpenseCategoriesList(this.index,{super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1.0,
          ),
        ),
      ),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 5 / 3,
        ),
        itemCount: context.read<ExpensyDashboardPresentationRemoteBloc>().state.getRecentExpenses()[index].getExpenseCategories()?.length,
        shrinkWrap: true,
        itemBuilder: (context, expenseCategoryIndex) {
          return ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemExpenseCategoriesListItem(
            expenseIndex: index,
            expenseCategoryIndex: expenseCategoryIndex
          );
        },
      ),
    );
  }

}
