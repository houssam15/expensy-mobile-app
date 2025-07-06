part of "use-case.dart";

enum ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponseErrors{
  others
}

class ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponse extends ExpensyCommonResponse{
  //current user
  User? _user;
  ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponseErrors? _error;

  void setUser(User? user){
    _user = user;
  }

  User? getUser(){
    return _user;
  }

  void setError(ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponseErrors? error){
    _error = error;
  }

  ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponseErrors? getError(){
    return _error;
  }

  bool isSuccess(){
    return _error == null;
  }

  bool hasUser(){
    return _user != null;
  }
}