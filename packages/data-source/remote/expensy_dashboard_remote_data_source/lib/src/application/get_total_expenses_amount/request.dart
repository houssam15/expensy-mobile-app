part of "use-case.dart";

class ExpensyDashboardRemoteDataSourceGetRecentExpensesRequest extends ExpensyCommonRequest{

  User? _user;

  void setUser(User? user) => _user = user;

  User? getUser() => _user;

}