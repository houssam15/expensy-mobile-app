part of "use-case.dart";

enum ExpensySignInRemoteDataSourceLoginResponseErrors{
  invalidDataProvided,
  incorrectEmailOrPassword
}

class ExpensySignInRemoteDataSourceLoginResponse extends ExpensyCommonResponse{
  //current user
  User? _user;
  ExpensySignInRemoteDataSourceLoginResponseErrors? _error;

  void setUser(User? user){
    _user = user;
  }

  User? getUser(){
    return _user;
  }

  void setError(ExpensySignInRemoteDataSourceLoginResponseErrors? error){
    _error = error;
  }

  ExpensySignInRemoteDataSourceLoginResponseErrors? getError(){
    return _error;
  }

  bool isSuccess(){
    return _error == null;
  }
}