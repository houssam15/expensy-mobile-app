import "package:flutter_bloc/flutter_bloc.dart";
import "package:equatable/equatable.dart";

import "../base/base_event.dart";

part "event.dart";
part "state.dart";

class ExpensyCommonAuthenticationBloc extends Bloc<ExpensyCommonAuthenticationEvent,ExpensyCommonAuthenticationState>{
  ExpensyCommonAuthenticationBloc():super(ExpensyCommonAuthenticationState()){
    on<ExpensyCommonAuthenticationAppStarted>(_appStarted);
  }

  _appStarted(ExpensyCommonAuthenticationAppStarted event , Emitter<ExpensyCommonAuthenticationState> emit) async{
    await Future.delayed(Duration(seconds: 2));
    emit(state.copyWith(status: ExpensyCommonAuthenticationStatus.notAuthenticated));
  }
}