import 'package:equatable/equatable.dart';
import 'package:expensy_common/expensy_common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../config/config.dart';
import "package:expensy_expenses_list_remote_data_source/expensy_expenses_list_remote_data_source.dart";

part "event.dart";
part "state.dart";

class ExpensyExpensesListPresentationRemoteBloc extends Bloc<ExpensyExpensesListPresentationRemoteEvent,ExpensyExpensesListPresentationRemoteState>{

  ExpensyExpensesListPresentationRemoteBloc():super(ExpensyExpensesListPresentationRemoteState()){
    on<ExpensyExpensesListPresentationRemoteStarted>(_onStarted);
  }

  ExpensyExpensesListPresentationConfig? _config;
  ExpensyExpensesListRemoteDataSource? _remoteDataSource;

  ExpensyExpensesListPresentationConfig getConfig(){
    _config ??= ExpensyExpensesListPresentationConfig();
    return _config!;
  }

  ExpensyExpensesListRemoteDataSource getRemoteDataSource(){
    _remoteDataSource ??= ExpensyExpensesListRemoteDataSource();
    return _remoteDataSource!;
  }

  _onStarted(ExpensyExpensesListPresentationRemoteStarted event,Emitter<ExpensyExpensesListPresentationRemoteState> emit) async {

    var user = event.context.read<ExpensyCommonAuthenticationBloc>().state.getCurrentUser();

    final recentExpenses = await getRemoteDataSource().getExpensesList(
        ExpensyExpensesListRemoteDataSourceGetExpensesListRequest()..setUser(user)
    );

    emit(
        state.copyWith(
            status: ExpensyExpensesListPresentationRemoteStatus.success,
            expensesList: recentExpenses.getItems(),
            cantGetExpensesList: recentExpenses.hasError()
        )
    );

  }


}