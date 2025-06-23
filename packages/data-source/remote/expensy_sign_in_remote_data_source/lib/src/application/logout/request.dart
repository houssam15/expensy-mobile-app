part of "use-case.dart";

class ExpensySignInRemoteDataSourceLogOutRequest extends ExpensyCommonRequest{
  User? _user;

  void setUser(User? user){
    _user = user;
  }

  User? getUser(){
    return _user;
  }

  bool isValid(){
    return _user != null && _user?.getEmail() != null && _user?.getPassword() != null;
  }

}