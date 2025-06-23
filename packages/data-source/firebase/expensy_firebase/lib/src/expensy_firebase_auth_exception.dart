enum ExpensyFirebaseAuthExceptionCode {
  emailAlreadyInUse,
  invalidEmail,
  operationNotAllowed,
  weakPassword,
  networkError,
  tooManyRequests,
  userCancelGoogleSignIn,
  invalidCredential,
  userDisabled,
  unknown,
}

class ExpensyFirebaseAuthException implements Exception{
  ExpensyFirebaseAuthExceptionCode? _code;
  String? _message;

  void setCode(ExpensyFirebaseAuthExceptionCode? code){
    _code = code;
  }

  ExpensyFirebaseAuthExceptionCode? getCode(){
    return _code;
  }

  void setMessage(String? message){
    _message = message;
  }

  String? getMessage(){
    return _message;
  }

  bool hasError(){
    return _code!=null;
  }

  @override
  String toString() => 'ExpensyFirebaseAuthException($_code): $_message';
}