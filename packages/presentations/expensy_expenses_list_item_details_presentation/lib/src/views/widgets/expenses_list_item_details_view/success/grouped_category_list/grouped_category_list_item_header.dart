import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../../blocs/blocs.dart";

class ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItemHeader extends StatelessWidget {
  const ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItemHeader(this.index,{super.key});

  final int index;

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyExpensesListItemDetailsPresentationRemoteBloc>();
    final state = bloc.state;
    final categoryProducts = state.categoryProducts?[index];

    return ExpensyCategoryOverview(
      categoryImage: categoryProducts?.category?.getCategoryPictureLink(),
      categoryName: categoryProducts?.category?.getName(),
      categoryDescription: categoryProducts?.category?.getDescription(),
      price: "+\$${categoryProducts?.categoryTotal?.toStringAsFixed(2)}",
      priceTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w900
      ),
    );

  }

}
