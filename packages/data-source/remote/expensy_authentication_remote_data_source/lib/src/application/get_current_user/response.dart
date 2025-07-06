part of "use-case.dart";

enum ExpensySignUpRemoteDataSourceCreateUserResponseErrors{
  emptyFieldsNotAllowed,
  emailAlreadyExist,
  invalidEmail,
  weakPassword,
  others
}

class ExpensySignUpRemoteDataSourceCreateUserResponse extends ExpensyCommonResponse{
  //current user
  User? _user;
  ExpensySignUpRemoteDataSourceCreateUserResponseErrors? _error;

  void setUser(User? user){
    _user = user;
  }

  User? getUser(){
    return _user;
  }

  void setError(ExpensySignUpRemoteDataSourceCreateUserResponseErrors? error){
    _error = error;
  }

  ExpensySignUpRemoteDataSourceCreateUserResponseErrors? getError(){
    return _error;
  }

  bool isSuccess(){
    return _error == null;
  }
}