part of "bloc.dart";

sealed class ExpensyDashboardPresentationRemoteEvent extends ExpensyCommonBaseEvent{
  ExpensyDashboardPresentationRemoteEvent(super.context);
}

class ExpensyDashboardPresentationRemoteStarted extends ExpensyDashboardPresentationRemoteEvent{
  ExpensyDashboardPresentationRemoteStarted(super.context);
}

class ExpensyDashboardPresentationRemoteSelectedMonthChanged extends ExpensyDashboardPresentationRemoteEvent{
  DateTime? selectedMonth;
  ExpensyDashboardPresentationRemoteSelectedMonthChanged(super.context,{this.selectedMonth});
}

