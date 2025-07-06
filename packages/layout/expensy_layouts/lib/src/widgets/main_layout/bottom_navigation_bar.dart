import "package:expensy_layouts/src/blocs/blocs.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "bottom_navigation_bar_home_item.dart";
import "bottom_navigation_bar_add_item.dart";
import "bottom_navigation_bar_expenses_item.dart";

class ExpensyLayoutsMainLayoutBottomNavigationBar extends StatelessWidget {
  const ExpensyLayoutsMainLayoutBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.5), // border color
            width: 1.0,         // border width
          ),
        ),
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: context.read<ExpensyLayoutsMainLayoutBloc>().state.getItems().map((elm) => elm).toList(),
      ),
    );
  }
}
