import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../../../blocs/blocs.dart";

class ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItemContentExpenseItem extends StatelessWidget {
  const ExpensyExpensesListItemDetailsPresentationViewSuccessPageGroupedCategoryListItemContentExpenseItem({
    super.key,
    required this.categoryIndex,
    required this.productIndex
  });

  final int categoryIndex;
  final int productIndex;

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyExpensesListItemDetailsPresentationRemoteBloc>();
    final state = bloc.state;
    final categoryProducts = state.categoryProducts?[categoryIndex];
    final product = categoryProducts?.products?[productIndex];

    return ExpensyCategoryOverview(
      categoryImage: product?.getProduct()?.getMainPictureUrl(),
      categoryImageSize: 40,
      categoryName: product?.getProduct()?.getName(),
      categoryNameTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.grey,
        fontSize: 12
      ),
      categoryDescription: product?.getProduct()?.getDescription(),
      categoryDescriptionTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.grey,
          fontSize: 12
      ),
      price: "+\$${product?.getTotal()}",
      spacer: SizedBox(height: 1),
    );

  }
}
