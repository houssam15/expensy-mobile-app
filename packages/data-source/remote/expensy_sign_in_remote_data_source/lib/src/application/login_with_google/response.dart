part of "use-case.dart";

enum ExpensySignInRemoteDataSourceLoginWithGoogleResponseErrors{
  userCancelGoogleSignIn,
  googleSignInFailed
}

class ExpensySignInRemoteDataSourceLoginWithGoogleResponse extends ExpensyCommonResponse{
  //current user
  User? _user;
  ExpensySignInRemoteDataSourceLoginWithGoogleResponseErrors? _error;

  void setUser(User? user){
    _user = user;
  }

  User? getUser(){
    return _user;
  }

  void setError(ExpensySignInRemoteDataSourceLoginWithGoogleResponseErrors? error){
    _error = error;
  }

  ExpensySignInRemoteDataSourceLoginWithGoogleResponseErrors? getError(){
    return _error;
  }

  bool isSuccess(){
    return _error == null;
  }
}