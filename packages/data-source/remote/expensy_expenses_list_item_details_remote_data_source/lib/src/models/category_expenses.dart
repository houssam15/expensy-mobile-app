import 'package:expensy_common/expensy_common.dart';

class ExpensyExpensesListItemDetailsRemoteDataSourceCategoryExpenses {

  ExpensyExpenseCategoryTotal? _categoryTotal;
  List<ExpensyExpense>? _expenses;

  void setCategoryTotal(ExpensyExpenseCategoryTotal? categoryTotal) => _categoryTotal = categoryTotal;
  void setExpenses(List<ExpensyExpense>? expenses) => _expenses = expenses;
  
  ExpensyExpenseCategoryTotal? getCategoryTotal() => _categoryTotal;
  List<ExpensyExpense>? getExpenses() => _expenses;

}