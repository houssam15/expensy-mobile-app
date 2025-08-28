part of "use_case.dart";

enum ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors{
  others,
  cantGetDocument,
  collectionNotFound
}

class ExpensyDashboardRemoteDataSourceGetRecentExpensesResponse extends ExpensyCommonResponse{

  ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors? _error;
  List<ExpensyExpense>? _items;

  void setError(ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors? error) => _error = error;
  void setItems(List<ExpensyExpense>? items) => _items = items;
  void addItem(ExpensyExpense item){
    _items ??= [];
    _items?.add(item);
  }
  ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors? getError() => _error;
  bool isSuccess() => _error == null;
  bool hasError() => _error!=null || isHaveUnknownError();
  List<ExpensyExpense>? getItems() => _items;

}