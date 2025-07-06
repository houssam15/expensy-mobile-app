import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../blocs/blocs.dart";

class ExpensyLayoutsMainLayoutBottomNavigationBarAddItem extends StatelessWidget {

  const ExpensyLayoutsMainLayoutBottomNavigationBarAddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<ExpensyLayoutsMainLayoutBloc>().add(ExpensyLayoutsMainLayoutBottomNavigationBarItemClicked(context,route:ExpensyCommonAppRoutes.expensesAddNewExpenseFormRoute)),
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10)
          ),
          margin: EdgeInsets.all(5),
          child: Icon(Icons.add,color: Colors.white)
      ),
    );
  }
}
