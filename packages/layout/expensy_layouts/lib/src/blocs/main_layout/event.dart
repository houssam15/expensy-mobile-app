part of "bloc.dart";

sealed class ExpensyLayoutsMainLayoutEvent extends ExpensyCommonBaseEvent{
  ExpensyLayoutsMainLayoutEvent(super.context);
}

class ExpensyLayoutsMainLayoutBottomNavigationBarItemClicked extends ExpensyLayoutsMainLayoutEvent{
  final String route;
  ExpensyLayoutsMainLayoutBottomNavigationBarItemClicked(super.context,{required this.route});
}