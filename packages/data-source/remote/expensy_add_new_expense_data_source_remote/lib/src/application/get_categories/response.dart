part of "use_case.dart";

class GetCategoriesResponse extends ExpensyCommonResponse{
  List<ExpensyExpenseCategory> _categories = [];

  List<ExpensyExpenseCategory> get categories => _categories;
  bool get isSuccess => !isHaveUnknownError();

  set categories(List<ExpensyExpenseCategory> categories) => _categories = categories;
  set addCategory(ExpensyExpenseCategory category) => _categories.add(category);
}