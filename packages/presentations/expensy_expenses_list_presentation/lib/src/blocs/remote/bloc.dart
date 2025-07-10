import 'package:equatable/equatable.dart';
import 'package:expensy_common/expensy_common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/config.dart';

part "event.dart";
part "state.dart";

class ExpensyExpensesListPresentationRemoteBloc extends Bloc<ExpensyExpensesListPresentationRemoteEvent,ExpensyExpensesListPresentationRemoteState>{

  ExpensyExpensesListPresentationRemoteBloc():super(ExpensyExpensesListPresentationRemoteState()){
    on<ExpensyExpensesListPresentationRemoteStarted>(_onStarted);
  }

  ExpensyExpensesListPresentationConfig? _config;

  ExpensyExpensesListPresentationConfig getConfig(){
    _config ??= ExpensyExpensesListPresentationConfig();
    return _config!;
  }

  _onStarted(ExpensyExpensesListPresentationRemoteStarted event,Emitter<ExpensyExpensesListPresentationRemoteState> emit) async {
    emit(
        state.copyWith(
            status: ExpensyExpensesListPresentationRemoteStatus.success
        )
    );
  }


}