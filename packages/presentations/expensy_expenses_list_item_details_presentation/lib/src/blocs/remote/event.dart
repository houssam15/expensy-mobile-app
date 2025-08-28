part of "bloc.dart";

class ExpensyExpensesListItemDetailsPresentationRemoteEvent extends ExpensyCommonBaseEvent{
  ExpensyExpensesListItemDetailsPresentationRemoteEvent(super.context);
}

class ExpensyExpensesListItemDetailsPresentationRemoteStarted extends ExpensyExpensesListItemDetailsPresentationRemoteEvent{
  final String? expenseId;
  ExpensyExpensesListItemDetailsPresentationRemoteStarted(super.context,{this.expenseId});
}
