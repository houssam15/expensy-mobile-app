import "package:expensy_common/expensy_common.dart";
import "package:expensy_layouts/src/blocs/blocs.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class ExpensyLayoutsMainLayoutBottomNavigationBarHomeItem extends StatelessWidget {

  const ExpensyLayoutsMainLayoutBottomNavigationBarHomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => context.read<ExpensyLayoutsMainLayoutBloc>().add(ExpensyLayoutsMainLayoutBottomNavigationBarItemClicked(context,route: ExpensyCommonAppRoutes.dashboardRoute)),
        child: Container(
          height: 50,
          color: Colors.white,
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Icon(Icons.home),
              Text("Home")
            ],
          ),
        ),
      ),
    );
  }
}
