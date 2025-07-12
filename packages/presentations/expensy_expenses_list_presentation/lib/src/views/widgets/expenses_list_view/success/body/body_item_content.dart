import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../blocs/remote/bloc.dart";
import "body_item_content_category_overview.dart";

class ExpensyExpensesListPresentationViewSuccessPageBodyItemContent extends StatelessWidget {
  const ExpensyExpensesListPresentationViewSuccessPageBodyItemContent(this.index,{super.key});

  final int index;

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyExpensesListPresentationRemoteBloc>();
    final state = bloc.state;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 1
          )
        )
      ),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: state.getExpensesList()[index].getExpenseCategories().length,
          itemBuilder: (context, categoryIndex) => ExpensyExpensesListPresentationViewSuccessPageBodyItemContentCategoryOverview(
            expenseIndex: index,
            categoryIndex: categoryIndex
          ),
      ),
    );
  }
}