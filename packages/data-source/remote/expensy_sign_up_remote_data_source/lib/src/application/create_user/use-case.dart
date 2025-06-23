import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class ExpensySignUpRemoteDataSourceCreateUserUseCase {

  Future<ExpensySignUpRemoteDataSourceCreateUserResponse> execute(ExpensySignUpRemoteDataSourceCreateUserRequest request) async {
    ExpensySignUpRemoteDataSourceCreateUserResponse response = ExpensySignUpRemoteDataSourceCreateUserResponse();
      if(!request.isValid()){
        response.setError(ExpensySignUpRemoteDataSourceCreateUserResponseErrors.emptyFieldsNotAllowed);
      }else{
        try{
          await ExpensyFirebase.getFirebaseAuth().createUserWithEmailAndPassword(
              email: request.getUser()!.getEmail()!,
              password: request.getUser()!.getPassword()!,
          );
        } on ExpensyFirebaseAuthException catch(err){
          switch(err.getCode()){
            case ExpensyFirebaseAuthExceptionCode.emailAlreadyInUse :
              response.setError(ExpensySignUpRemoteDataSourceCreateUserResponseErrors.emailAlreadyExist);
            case ExpensyFirebaseAuthExceptionCode.invalidEmail :
              response.setError(ExpensySignUpRemoteDataSourceCreateUserResponseErrors.invalidEmail);
            case ExpensyFirebaseAuthExceptionCode.weakPassword :
              response.setError(ExpensySignUpRemoteDataSourceCreateUserResponseErrors.weakPassword);
            default:
              response.setError(ExpensySignUpRemoteDataSourceCreateUserResponseErrors.others);
          }
        }
      }
    return response;
  }

}