part of "use-case.dart";

enum ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors{
  userCancelGoogleSignIn,
  emailAlreadyInUse,
  invalidCredential,
  operationNotAllowed,
  userDisabled,
  networkError,
  others
}

class ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponse extends ExpensyCommonResponse{
  //current user
  User? _user;
  ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors? _error;

  void setUser(User? user){
    _user = user;
  }

  User? getUser(){
    return _user;
  }

  void setError(ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors? error){
    _error = error;
  }

  ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors? getError(){
    return _error;
  }

  bool isSuccess(){
    return _error == null;
  }
}