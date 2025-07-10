import "package:expensy_common/expensy_common.dart";
import "package:expensy_layouts/src/blocs/blocs.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class ExpensyLayoutsMainLayoutBottomNavigationBarHomeItem extends StatelessWidget {

  ExpensyLayoutsMainLayoutBottomNavigationBarHomeItem({super.key , this.isSelected = false});

  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width/3,
      color: Theme.of(context).extension<ExpensyLayoutsColors>()?.homeButtonBackgroundColor,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Icon(
              Icons.home,
            color: isSelected
                ? Theme.of(context).extension<ExpensyLayoutsColors>()?.homeButtonIconColor
                : Colors.grey,
          ),
          Text(
              "Home",
              style: TextStyle(
                color: isSelected
                    ? Theme.of(context).extension<ExpensyLayoutsColors>()?.homeButtonIconColor
                    : Colors.grey,
              ),
          )
        ],
      ),
    );
  }
}
