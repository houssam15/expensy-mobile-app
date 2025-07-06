part of "use-case.dart";

enum ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponseErrors{
  cantGetUser,
  cantGetUserDetails
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

  bool hasError(){
    return _error != null || isHaveUnknownError();
  }
}