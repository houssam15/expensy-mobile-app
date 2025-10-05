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
      color: Colors.grey.shade100,
      margin: const EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      //height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  color: Colors.grey.shade200,
                  //width: double.maxFinite,
                child: Image.network(
                  "${expenseProduct.getProduct()?.getMainPictureUrl()}",
                  width: 50,
                  height: 50,
                )
              ),
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${expenseProduct.getProduct()?.getName()}"),
                  Text("${expenseProduct.getProduct()?.getDescription()}")
                ]
              )
          ),
          const SizedBox(width: 10),
          Container(
              child: Center(
                  child: Text("\$${expenseProduct.getTotal()}")
              )
          ),
        ],
      ),
    );
  }

}
