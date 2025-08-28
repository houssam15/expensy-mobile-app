part of "use_case.dart";

class GetExpenseDetailsRequest extends ExpensyCommonRequest{
  String? _expenseId;

  String? get expenseId => _expenseId;

  set expenseId(String? expenseId) => _expenseId = expenseId;
}