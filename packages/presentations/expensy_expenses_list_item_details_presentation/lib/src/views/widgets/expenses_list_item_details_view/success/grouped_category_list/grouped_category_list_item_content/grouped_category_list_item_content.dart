import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../../blocs/blocs.dart";
import "grouped_category_list_item_content_expense_item.dart";

class ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItemContent extends StatelessWidget {
  const ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItemContent(this.index,{super.key});

  final int index;

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyExpensesListItemDetailsPresentationRemoteBloc>();
    final state = bloc.state;
    final categoryProducts = state.categoryProducts?[index];

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
              color: Colors.grey.withOpacity(0.5),
              width: 1
          ),
        ),
      ),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: categoryProducts?.products?.length,
          itemBuilder: (context, productIndex) => ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItemContentExpenseItem(
            categoryIndex: index,
            productIndex: productIndex,
          ),
      )
    );
  }
}
