import 'package:equatable/equatable.dart';
import 'package:expensy_common/expensy_common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../config/config.dart';
import "package:expensy_dashboard_remote_data_source/expensy_dashboard_remote_data_source.dart";

part "event.dart";
part "state.dart";

class ExpensyDashboardPresentationRemoteBloc extends Bloc<ExpensyDashboardPresentationRemoteEvent,ExpensyDashboardPresentationRemoteState>{

  ExpensyDashboardPresentationRemoteBloc():super(ExpensyDashboardPresentationRemoteState()){
    on<ExpensyDashboardPresentationRemoteStarted>(_onStarted);
    on<ExpensyDashboardPresentationRemoteSelectedMonthChanged>(_onSelectedMonthChanged);
  }

  ExpensyDashboardPresentationConfig? _config;
  ExpensyDashboardRemoteDataSource? _remoteDataSource;

  ExpensyDashboardPresentationConfig getConfig(){
    _config ??= ExpensyDashboardPresentationConfig();
    return _config!;
  }

  ExpensyDashboardRemoteDataSource getRemoteDataSource(){
    _remoteDataSource ??= ExpensyDashboardRemoteDataSource();
    return _remoteDataSource!;
  }

  _onStarted(ExpensyDashboardPresentationRemoteEvent event,Emitter<ExpensyDashboardPresentationRemoteState> emit) async {
    try{

      emit(state.copyWith(selectedDateTime: DateTime.now()));

      var user = event.context.read<ExpensyCommonAuthenticationBloc>().state.getCurrentUser();

      final currentMonthTotal = await getRemoteDataSource().getTotalExpensesAmount(
          ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountRequest()
          ..setUser(user)
          ..setDate(state.getSelectedDateTime())
          ..setAggregationType(AggregationType.month)
      );

      final lastMonthTotal = await getRemoteDataSource().getTotalExpensesAmount(
          ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountRequest()
            ..setUser(user)
            ..setDate(state.getLastFromSelectedMonth())
            ..setAggregationType(AggregationType.month)
      );

      final recentExpenses = await getRemoteDataSource().getRecentExpenses(
          ExpensyDashboardRemoteDataSourceGetRecentExpensesRequest()..setUser(user)
      );

      emit(
        state.copyWith(
          status: ExpensyDashboardPresentationRemoteStatus.success,
          cantGetRecentExpenses: recentExpenses.hasError(),
          recentExpenses: recentExpenses.getItems(),
          user: user,
          currentMonthTotal: currentMonthTotal.getTotal(),
          cantGetCurrentMonthTotal: currentMonthTotal.hasError(),
          lastMonthTotal: lastMonthTotal.getTotal(),
          cantGetLastMonthTotal: lastMonthTotal.hasError()
        )
      );

    }catch(err){

    }

  }

  _onSelectedMonthChanged(ExpensyDashboardPresentationRemoteSelectedMonthChanged event , Emitter<ExpensyDashboardPresentationRemoteState> emit) async {
    try{

      emit(state.copyWith(selectedDateTime: event.selectedMonth));

      var user = event.context.read<ExpensyCommonAuthenticationBloc>().state.getCurrentUser();

      final currentMonthTotal = await getRemoteDataSource().getTotalExpensesAmount(
          ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountRequest()
            ..setUser(user)
            ..setDate(state.getSelectedDateTime())
            ..setAggregationType(AggregationType.month)
      );

      final lastMonthTotal = await getRemoteDataSource().getTotalExpensesAmount(
          ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountRequest()
            ..setUser(user)
            ..setDate(state.getLastFromSelectedMonth())
            ..setAggregationType(AggregationType.month)
      );

      emit(
          state.copyWith(
              status: ExpensyDashboardPresentationRemoteStatus.success,
              currentMonthTotal: currentMonthTotal.getTotal(),
              cantGetCurrentMonthTotal: currentMonthTotal.hasError(),
              lastMonthTotal: lastMonthTotal.getTotal(),
              cantGetLastMonthTotal: lastMonthTotal.hasError()
          )
      );

    }catch(err){

    }
  }

}