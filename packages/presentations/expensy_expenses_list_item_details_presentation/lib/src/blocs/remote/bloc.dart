import "package:expensy_common/expensy_common.dart";
import "package:expensy_expenses_list_item_details_remote_data_source/expensy_expenses_list_item_details_remote_data_source.dart" as details;
import "package:flutter/foundation.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:equatable/equatable.dart";

part "event.dart";
part "state.dart";

class ExpensyExpensesListItemDetailsPresentationRemoteBloc extends Bloc<ExpensyExpensesListItemDetailsPresentationRemoteEvent,ExpensyExpensesListItemDetailsPresentationRemoteState>{

  ExpensyExpensesListItemDetailsPresentationRemoteBloc():super(ExpensyExpensesListItemDetailsPresentationRemoteState()){
    on<ExpensyExpensesListItemDetailsPresentationRemoteStarted>(_onStarted);
  }

  details.ExpensyExpensesListItemDetailsRemoteDataSource? _remoteDataSource;

  details.ExpensyExpensesListItemDetailsRemoteDataSource getDataSourceRemote(){
    _remoteDataSource ??= details.ExpensyExpensesListItemDetailsRemoteDataSource();
    return _remoteDataSource!;
  }

  _onStarted(ExpensyExpensesListItemDetailsPresentationRemoteStarted event,Emitter<ExpensyExpensesListItemDetailsPresentationRemoteState> emit) async {
    try{
      final expenseDetails = await getDataSourceRemote().getExpenseDetails(
          details.GetExpenseDetailsRequest()
        ..expenseId = event.expenseId
      );

      if(expenseDetails.isSuccess()){

        emit(state.copyWith(
          status: ExpensyExpensesListItemDetailsPresentationRemoteStatus.success,
          createdAt: expenseDetails.createdAt,
          categoriesByTotal: expenseDetails.categoriesByTotal,
          categoryProducts: expenseDetails.categoryProducts
        ));

      }else{

        emit(state.copyWith(
            status: ExpensyExpensesListItemDetailsPresentationRemoteStatus.failed
        ));

      }

    }catch(_){}
  }

}
