part of "bloc.dart";

sealed class ExpensyCommonAuthenticationEvent{}

class ExpensyCommonAuthenticationAppStarted extends ExpensyCommonAuthenticationEvent{}

class ExpensyCommonAuthenticationAuthStateListenerRegistrationRequested extends ExpensyCommonAuthenticationEvent{}

class ExpensyCommonAuthenticationUserChanged  extends ExpensyCommonAuthenticationEvent{
  final User? user;
  ExpensyCommonAuthenticationUserChanged(this.user);
}