import "package:expensy_common/expensy_common.dart";
import "package:expensy_expenses_list_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class ExpensyExpensesListPresentationViewSuccessPageBodyItemContentCategoryOverview extends StatelessWidget {

  const ExpensyExpensesListPresentationViewSuccessPageBodyItemContentCategoryOverview({
    super.key,
    required this.expenseIndex,
    required this.categoryIndex
  });

  final int expenseIndex;
  final int categoryIndex;

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyExpensesListPresentationRemoteBloc>();
    final state = bloc.state;

    return ExpensyCategoryOverview(
      categoryImage: state.getExpensesList()[expenseIndex].getExpenseCategoriesTotal()?[categoryIndex].getCategory().getCategoryPictureLink(),
      categoryName: state.getExpensesList()[expenseIndex].getExpenseCategoriesTotal()?[categoryIndex].getCategory().getName(),
      categoryDescription: state.getExpensesList()[expenseIndex].getExpenseCategoriesTotal()?[categoryIndex].getCategory().getDescription(),
      price: "+\$${state.getExpensesList()[expenseIndex].getExpenseCategoriesTotal()?[categoryIndex].getTotal()}",
    );

  }

}
