part of "bloc.dart";

sealed class ExpensyExpensesListPresentationRemoteEvent extends ExpensyCommonBaseEvent{
  ExpensyExpensesListPresentationRemoteEvent(super.context);
}

class ExpensyExpensesListPresentationRemoteStarted extends ExpensyExpensesListPresentationRemoteEvent{
  ExpensyExpensesListPresentationRemoteStarted(super.context);
}
