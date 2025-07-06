import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../blocs/blocs.dart";

class ExpensyLayoutsMainLayoutBottomNavigationBarExpensesItem extends StatelessWidget {

  const ExpensyLayoutsMainLayoutBottomNavigationBarExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<ExpensyLayoutsMainLayoutBloc>().add(ExpensyLayoutsMainLayoutBottomNavigationBarItemClicked(context,route:ExpensyCommonAppRoutes.expensesListRoute)),
      child: Expanded(
        child: Container(
          height: 50,
          color: Colors.white,
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Icon(Icons.list),
              Text("Expenses")
            ],
          ),
        ),
      ),
    );
  }
}
