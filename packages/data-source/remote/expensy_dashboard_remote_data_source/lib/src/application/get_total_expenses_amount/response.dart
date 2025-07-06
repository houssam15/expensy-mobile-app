part of "use-case.dart";

enum ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors{
  others,
  cantGetDocument,
  collectionNotFound
}

class ExpensyDashboardRemoteDataSourceGetRecentExpensesResponse extends ExpensyCommonResponse{

  ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors? _error;
  List<ExpensyDashboardRemoteDataSourceExpense>? _items;

  void setError(ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors? error) => _error = error;
  void setItems(List<ExpensyDashboardRemoteDataSourceExpense>? items) => _items = items;

  ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors? getError() => _error;
  bool isSuccess() => _error == null;
  bool hasError() => _error!=null || isHaveUnknownError();
  List<ExpensyDashboardRemoteDataSourceExpense>? getItems() => _items;

}