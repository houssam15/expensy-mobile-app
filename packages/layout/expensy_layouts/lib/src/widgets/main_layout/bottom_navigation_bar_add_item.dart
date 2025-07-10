import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../blocs/blocs.dart";

class ExpensyLayoutsMainLayoutBottomNavigationBarAddItem extends StatelessWidget {

  const ExpensyLayoutsMainLayoutBottomNavigationBarAddItem({super.key,this.isSelected = false});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Theme.of(context).extension<ExpensyLayoutsColors>()?.addButtonBackgroundColor,
            borderRadius: BorderRadius.circular(10)
        ),
        margin: EdgeInsets.all(5),
        child: Icon(Icons.add,color: Theme.of(context).extension<ExpensyLayoutsColors>()?.addButtonIconColor)
      ),
    );
  }
}
