part of "bloc.dart";

enum ExpensyExpensesListPresentationRemoteStatus {
  success,failed,initial
}

class ExpensyExpensesListPresentationRemoteState extends Equatable {

  ExpensyExpensesListPresentationRemoteStatus _status;

  ExpensyExpensesListPresentationRemoteState({
    ExpensyExpensesListPresentationRemoteStatus? status
  })
  :_status = status ?? ExpensyExpensesListPresentationRemoteStatus.initial;

  ExpensyExpensesListPresentationRemoteState copyWith({
    ExpensyExpensesListPresentationRemoteStatus? status,
  }){
    return ExpensyExpensesListPresentationRemoteState(
        status: status ?? _status,
    );
  }

  ExpensyExpensesListPresentationRemoteStatus getStatus() => _status;

  @override
  List<Object?> get props => [_status];

}