part of "use_case.dart";

class ExpensyExpensesListItemDetailsRemoteDataSourceGetExpenseCategoriesRequest extends ExpensyCommonRequest{
  String? _expenseId;

  void setExpenseId(String? expenseId) => _expenseId = expenseId;

  String? getExpenseId() => _expenseId;
}