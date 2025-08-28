part of "use_case.dart";

enum ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesResponseErrors{
  others,
  cantGetDocument,
  collectionNotFound
}

class ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesResponse extends ExpensyCommonResponse{

  ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesResponseErrors? _error;
  List<ExpensyExpensesListItemDetailsRemoteDataSourceCategoryExpenses>? _categoryExpenses;

  void setError(ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesResponseErrors? error) => _error = error;
  void setCategoryExpenses(List<ExpensyExpensesListItemDetailsRemoteDataSourceCategoryExpenses>? categoryExpenses) => _categoryExpenses = categoryExpenses;

  ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesResponseErrors? getError() => _error;
  List<ExpensyExpensesListItemDetailsRemoteDataSourceCategoryExpenses>? getCategoryExpenses() => _categoryExpenses;
  bool isSuccess() => _error == null;
  bool hasError() => _error!=null || isHaveUnknownError();

}
