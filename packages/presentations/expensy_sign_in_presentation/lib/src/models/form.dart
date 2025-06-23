import 'package:equatable/equatable.dart';

class ExpensySignInForm extends Equatable{
  String? _email;
  String? _password;

  void setEmail(String? email){
    _email = email;
  }

  void setPassword(String? password){
    _password = password;
  }

  String? getEmail(){
    return _email;
  }

  String? getPassword(){
    return _password;
  }

  @override
  List<Object?> get props => [_email,_password];
}