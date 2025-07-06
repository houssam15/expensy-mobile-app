import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class ExpensySignInRemoteDataSourceLoginUseCase {

  Future<ExpensySignInRemoteDataSourceLoginResponse> execute(ExpensySignInRemoteDataSourceLoginRequest request) async {
    ExpensySignInRemoteDataSourceLoginResponse response = ExpensySignInRemoteDataSourceLoginResponse();
    try{
      if(!request.isValid()){
        response
          ..addMetaData("Email or password not valid")
          ..setError(ExpensySignInRemoteDataSourceLoginResponseErrors.invalidDataProvided);
      }else{
        try{
          await ExpensyFirebase.getFirebaseAuth().signWithEmailAndPassword(
              email: request.getUser()!.getEmail()!,
              password: request.getUser()!.getPassword()!
          );
        }catch(err){
          response
            ..addMetaData(err)
            ..setError(ExpensySignInRemoteDataSourceLoginResponseErrors.incorrectEmailOrPassword);
        }
      }
    }catch(err){
      response..addMetaData(err)..setIsHaveUnknownError(true);
    }
    return response;
  }

}