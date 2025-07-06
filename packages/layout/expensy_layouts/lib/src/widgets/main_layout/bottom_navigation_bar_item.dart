import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../blocs/blocs.dart";

class ExpensyLayoutsBottomNavigationBarItem extends StatelessWidget {
  ExpensyLayoutsBottomNavigationBarItem({super.key,required this.route,required this.child});
  String route;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => context.read<ExpensyLayoutsMainLayoutBloc>().add(ExpensyLayoutsMainLayoutBottomNavigationBarItemClicked(context,route:route)),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        child: child
    );
  }
}
