import "package:equatable/equatable.dart";
import "package:expensy_common/expensy_common.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:expensy_add_new_expense_data_source_remote/expensy_add_new_expense_data_source_remote.dart" as addNewExpense;

part "state.dart";
part "event.dart";

class RemoteBloc extends Bloc<RemoteEvent,RemoteState>{

  addNewExpense.DataSource? _dataSource;

  RemoteBloc():super(RemoteState()){
    on<RemoteAddNewExpenseRequested>(_onAddNewExpenseRequested);
  }

  addNewExpense.DataSource get dataSource {
    _dataSource ??= addNewExpense.DataSource();
    return _dataSource!;
  }

  _onAddNewExpenseRequested(RemoteAddNewExpenseRequested event,Emitter<RemoteState> emit) async {
    try{
      var addNewExpense = await dataSource.addNewExpense();

      print(addNewExpense);
    }catch(_){}
  }

}