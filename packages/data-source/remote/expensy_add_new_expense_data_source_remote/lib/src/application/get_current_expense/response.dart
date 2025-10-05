part of "use_case.dart";

class GetCurrentExpenseResponse extends ExpensyCommonResponse{
  ExpensyExpense? _expense;
  ExpensyExpense? get expense => _expense;
  set expense(ExpensyExpense? value) => _expense = value;
}