import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";

class ExpenseProductItem extends StatelessWidget {
  const ExpenseProductItem({
    super.key,
    required this.expenseProduct
  });

  final ExpensyExpenseProduct expenseProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.network(
              "${expenseProduct.getProduct()?.getMainPictureUrl()}",
            )
          ),
          Expanded(
              child: Column(
                children: [
                  Text("${expenseProduct.getProduct()?.getName()}"),
                  Text("${expenseProduct.getProduct()?.getDescription()}")
                ]
              )
          ),
          Container(
              width: 50,
              height: 50,
              child: Text("\$${expenseProduct.getTotal()}")
          ),
        ],
      ),
    );
  }

}
