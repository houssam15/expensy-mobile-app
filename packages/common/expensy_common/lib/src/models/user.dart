class User {
  String? _email;
  String? _password;
  String? _fullName;

  void setEmail(String? email){
    _email = email;
  }

  String? getEmail(){
    return _email;
  }

  void setPassword(String? password){
    _password = password;
  }

  String? getPassword(){
    return _password;
  }

  void setFullName(String? fullName){
    _fullName = fullName;
  }

  String? getFullName(){
    return _fullName;
  }
}