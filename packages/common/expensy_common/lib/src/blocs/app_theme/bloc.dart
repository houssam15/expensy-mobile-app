import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:equatable/equatable.dart";

import "../base/base_event.dart";

part "event.dart";
part "state.dart";

class ExpensyCommonAppThemeBloc extends Bloc<ExpensyCommonAppThemeEvent,ExpensyCommonAppThemeState>{
  ExpensyCommonAppThemeBloc():super(ExpensyCommonAppThemeState()){
    on<ExpensyCommonAppThemeSwitched>(_onThemeSwitched);
  }

  _onThemeSwitched(ExpensyCommonAppThemeSwitched event,Emitter<ExpensyCommonAppThemeState> emit) async {
    if(state.themeMode==ThemeMode.light){
      emit(state.copyWith(themeMode: ThemeMode.dark));
    }else{
      emit(state.copyWith(themeMode: ThemeMode.light));
    }
  }

}