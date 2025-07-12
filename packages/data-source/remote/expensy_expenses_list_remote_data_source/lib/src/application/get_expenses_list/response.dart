part of "use_case.dart";

enum ExpensyExpensesListRemoteDataSourceGetExpensesListResponseErrors{
  others,
  cantGetDocument,
  collectionNotFound
}

class ExpensyExpensesListRemoteDataSourceGetExpensesListResponse extends ExpensyCommonResponse{

  ExpensyExpensesListRemoteDataSourceGetExpensesListResponseErrors? _error;
  List<ExpensyExpense>? _items;

  void setError(ExpensyExpensesListRemoteDataSourceGetExpensesListResponseErrors? error) => _error = error;
  void setItems(List<ExpensyExpense>? items) => _items = items;

  ExpensyExpensesListRemoteDataSourceGetExpensesListResponseErrors? getError() => _error;
  bool isSuccess() => _error == null;
  bool hasError() => _error!=null || isHaveUnknownError();
  List<ExpensyExpense>? getItems() => _items;

}