import "application/get_expenses_list/use_case.dart";

class ExpensyExpensesListRemoteDataSource {
  Future<ExpensyExpensesListRemoteDataSourceGetExpensesListResponse> getExpensesList([ExpensyExpensesListRemoteDataSourceGetExpensesListRequest? request]) async {
    return ExpensyExpensesListRemoteDataSourceGetExpensesListUseCase().execute(request ?? ExpensyExpensesListRemoteDataSourceGetExpensesListRequest());
  }
}