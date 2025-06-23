import 'package:equatable/equatable.dart';

class ExpensySignUpForm extends Equatable{
  String? _fullName;
  String? _email;
  String? _password;
  String? _repeatedPassword;

  void setFullName(String? fullName){
    _fullName = fullName;
  }

  void setEmail(String? email){
    _email = email;
  }

  void setPassword(String? password){
    _password = password;
  }

  void setRepeatedPassword(String? repeatedPassword){
    _repeatedPassword = repeatedPassword;
  }

  String? getFullName(){
    return _fullName;
  }

  String? getEmail(){
    return _email;
  }

  String? getPassword(){
    return _password;
  }

  String? getRepeatedPassword(){
    return _repeatedPassword;
  }

  bool isPasswordMatch(){
    return _repeatedPassword == _password;
  }

  @override
  List<Object?> get props => [_fullName,_email,_password,_repeatedPassword];

  String toString(){
    return "ExpensySignUpForm : {fullName : $_fullName & email : $_email & password : $_password & repeatPassword : $_repeatedPassword}";
  }
}