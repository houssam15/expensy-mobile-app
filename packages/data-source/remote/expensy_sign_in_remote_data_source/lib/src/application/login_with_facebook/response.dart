part of "use-case.dart";

enum ExpensySignInRemoteDataSourceLoginWithFacebookResponseErrors{
  facebookSignInFailed
}

class ExpensySignInRemoteDataSourceLoginWithFacebookResponse extends ExpensyCommonResponse{
  //current user
  User? _user;
  ExpensySignInRemoteDataSourceLoginWithFacebookResponseErrors? _error;

  void setUser(User? user){
    _user = user;
  }

  User? getUser(){
    return _user;
  }

  void setError(ExpensySignInRemoteDataSourceLoginWithFacebookResponseErrors? error){
    _error = error;
  }

  ExpensySignInRemoteDataSourceLoginWithFacebookResponseErrors? getError(){
    return _error;
  }

  bool isSuccess(){
    return _error == null;
  }
}