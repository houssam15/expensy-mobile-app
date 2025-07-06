import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../expensy_common.dart';

part "event.dart";
part "state.dart";

class ExpensyCommonAppContextBloc extends Bloc<ExpensyCommonAppContextEvent,ExpensyCommonAppContextState>{

  ExpensyCommonAppContextBloc(super.initialState);

}