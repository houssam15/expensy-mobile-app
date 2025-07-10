import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../../../../blocs/remote/bloc.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemExpenseCategoriesListItem extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesListRecentElementsPreviewItemExpenseCategoriesListItem({super.key,required this.expenseIndex,required this.expenseCategoryIndex});

  final int expenseIndex;
  final int expenseCategoryIndex;

  @override
  Widget build(BuildContext context) {

    var category = context.read<ExpensyDashboardPresentationRemoteBloc>().state.getRecentExpenses()[expenseIndex].getExpenseCategories()?[expenseCategoryIndex];

    return Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: (expenseCategoryIndex % 2 == 0) ? Colors.grey.shade300 : Colors.transparent,
            width: 0.5,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "${category?.getCategory()?.getName()}",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).extension<ExpensyDashboardColors>()?.recentElementsPreviewItem
                    ),
                    overflow: TextOverflow.ellipsis
                ),
                SizedBox(height: 15),
                Text(
                    "${category?.getCategory()?.getDescription()}",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey
                    ),
                    overflow: TextOverflow.ellipsis
                )
              ],
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("${category?.getCategory()?.getCategoryPictureLink()}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                    "-\$ ${category?.getTotal()}",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w900
                    ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}