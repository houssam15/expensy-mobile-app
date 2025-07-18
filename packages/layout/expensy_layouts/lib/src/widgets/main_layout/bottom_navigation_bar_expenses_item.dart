import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../blocs/blocs.dart";

class ExpensyLayoutsMainLayoutBottomNavigationBarExpensesItem extends StatelessWidget {

  const ExpensyLayoutsMainLayoutBottomNavigationBarExpensesItem({super.key,this.isSelected = false});

  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width/3,
      color: Theme.of(context).extension<ExpensyLayoutsColors>()?.expensesButtonBackgroundColor,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Icon(
              Icons.list,
              color: isSelected
                  ? Theme.of(context).extension<ExpensyLayoutsColors>()?.expensesButtonIconColor
                  : Colors.grey,
          ),
          Text(
              "Expenses",
              style: TextStyle(
                  color: isSelected
                      ? Theme.of(context).extension<ExpensyLayoutsColors>()?.expensesButtonIconColor
                      : Colors.grey
              ),
          )
        ],
      ),
    );
  }
}
