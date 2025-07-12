part of "use_case.dart";

class ExpensyExpensesListRemoteDataSourceGetExpensesListRequest extends ExpensyCommonRequest{

  User? _user;

  void setUser(User? user) => _user = user;

  User? getUser() => _user;

}