part of "bloc.dart";

sealed class ExpensyCommonAppThemeEvent extends ExpensyCommonBaseEvent{
  ExpensyCommonAppThemeEvent(super.context);
}

class ExpensyCommonAppThemeSwitched extends ExpensyCommonAppThemeEvent{
  ExpensyCommonAppThemeSwitched(super.context);
}

