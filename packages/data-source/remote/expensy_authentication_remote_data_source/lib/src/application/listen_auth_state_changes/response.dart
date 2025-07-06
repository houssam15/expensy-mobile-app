part of "use-case.dart";


enum ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesResponseErrors{
  others
}

class ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesResponse extends ExpensyCommonResponse{
  //current user
  User? _user;
  ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesResponseErrors? _error;
  Stream<User?>? _userChangesStream;

  void setUser(User? user){
    _user = user;
  }

  User? getUser(){
    return _user;
  }

  void setError(ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesResponseErrors? error){
    _error = error;
  }

  ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesResponseErrors? getError(){
    return _error;
  }

  bool isSuccess(){
    return _error == null;
  }

  bool hasUser(){
    return _user != null;
  }

  void setUserChangesStream(Stream<User?> stream) {
    _userChangesStream = stream;
  }

  Stream<User?>? getUserChangesStream() {
    return _userChangesStream;
  }
}