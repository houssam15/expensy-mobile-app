part of "bloc.dart";

enum ExpensyExpensesListPresentationRemoteStatus {
  success,failed,initial
}

class ExpensyExpensesListPresentationRemoteState extends Equatable {

  ExpensyExpensesListPresentationRemoteStatus _status;
  List<ExpensyExpense> _expensesList;
  bool _cantGetExpensesList;


  ExpensyExpensesListPresentationRemoteState({
    ExpensyExpensesListPresentationRemoteStatus? status,
    List<ExpensyExpense>? expensesList,
    bool? cantGetExpensesList
  })
  :_status = status ?? ExpensyExpensesListPresentationRemoteStatus.initial
  ,_expensesList = expensesList ?? const []
  ,_cantGetExpensesList = cantGetExpensesList ?? false;

  ExpensyExpensesListPresentationRemoteState copyWith({
    ExpensyExpensesListPresentationRemoteStatus? status,
    List<ExpensyExpense>? expensesList,
    bool? cantGetExpensesList
  }){
    return ExpensyExpensesListPresentationRemoteState(
        status: status ?? _status,
        expensesList: expensesList ?? _expensesList,
        cantGetExpensesList: cantGetExpensesList ?? _cantGetExpensesList
    );
  }

  ExpensyExpensesListPresentationRemoteStatus getStatus() => _status;
  List<ExpensyExpense> getExpensesList() => _expensesList;
  bool cantGetExpensesList() => _cantGetExpensesList;

  @override
  List<Object?> get props => [_status,_expensesList,_cantGetExpensesList];

}