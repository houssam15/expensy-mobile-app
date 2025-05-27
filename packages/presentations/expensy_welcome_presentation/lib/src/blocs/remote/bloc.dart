import 'package:equatable/equatable.dart';
import 'package:expensy_common/expensy_common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/config.dart';

part "event.dart";
part "state.dart";

class ExpensyWelcomePresentationRemoteBloc extends Bloc<ExpensyWelcomePresentationRemoteEvent,ExpensyWelcomePresentationRemoteState>{
  ExpensyWelcomePresentationRemoteBloc():super(ExpensyWelcomePresentationRemoteState()){
    on<ExpensyWelcomePresentationRemoteStarted>(_onStarted);
  }

  ExpensyWelcomePresentationConfig? _config;

  ExpensyWelcomePresentationConfig getConfig(){
    _config ??= ExpensyWelcomePresentationConfig();
    return _config!;
  }

  _onStarted(ExpensyWelcomePresentationRemoteEvent event,Emitter<ExpensyWelcomePresentationRemoteState> emit) async {
    emit(state.copyWith(status: ExpensyWelcomePresentationRemoteStatus.success));
  }


}