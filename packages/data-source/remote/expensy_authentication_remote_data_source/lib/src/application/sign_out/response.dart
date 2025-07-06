part of "use-case.dart";

enum ExpensyAuthenticationRemoteDataSourceSignOutResponseErrors{
  others
}

class ExpensyAuthenticationRemoteDataSourceSignOutResponse extends ExpensyCommonResponse{
  //current user
  ExpensyAuthenticationRemoteDataSourceSignOutResponseErrors? _error;

  void setError(ExpensyAuthenticationRemoteDataSourceSignOutResponseErrors? error){
    _error = error;
  }

  ExpensyAuthenticationRemoteDataSourceSignOutResponseErrors? getError(){
    return _error;
  }

  bool isSuccess(){
    return _error == null;
  }

}