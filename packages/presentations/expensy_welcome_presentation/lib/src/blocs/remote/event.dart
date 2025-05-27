part of "bloc.dart";

sealed class ExpensyWelcomePresentationRemoteEvent extends ExpensyCommonBaseEvent{
  ExpensyWelcomePresentationRemoteEvent(super.context);
}

class ExpensyWelcomePresentationRemoteStarted extends ExpensyWelcomePresentationRemoteEvent{
  ExpensyWelcomePresentationRemoteStarted(super.context);
}
