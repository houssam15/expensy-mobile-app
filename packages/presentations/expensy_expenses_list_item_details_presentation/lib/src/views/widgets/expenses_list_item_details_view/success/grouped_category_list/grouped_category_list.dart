import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../../../../../blocs/blocs.dart";
import "grouped_category_list_item.dart";

class ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryList extends StatelessWidget {

  const ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryList({super.key});

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyExpensesListItemDetailsPresentationRemoteBloc>();
    final state = bloc.state;

    return Expanded(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.zero,
        child: ListView.builder(
          itemCount: state.categoryProducts?.length,
          itemBuilder: (context, index) => ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItem(index)
        )
      ),
    );
  }
}
