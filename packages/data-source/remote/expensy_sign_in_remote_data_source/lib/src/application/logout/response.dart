part of "use-case.dart";


class ExpensySignInRemoteDataSourceLogOutResponse extends ExpensyCommonResponse{
  //current user
  User? _user;

  void setUser(User? user){
    _user = user;
  }

  User? getUser(){
    return _user;
  }

}