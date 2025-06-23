import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class ExpensySignUpRemoteDataSourceCreateUserWithGoogleUseCase {

  Future<ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponse> execute(ExpensySignUpRemoteDataSourceCreateUserWithGoogleRequest request) async {
    ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponse response = ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponse();
    try{
      await ExpensyFirebase.getFirebaseAuth().createUserWithGoogle();
    } on ExpensyFirebaseAuthException catch(err){
      switch(err.getCode()){
        case ExpensyFirebaseAuthExceptionCode.userCancelGoogleSignIn :
          response.setError(ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.userCancelGoogleSignIn);
        case ExpensyFirebaseAuthExceptionCode.emailAlreadyInUse :
          response.setError(ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.emailAlreadyInUse);
        case ExpensyFirebaseAuthExceptionCode.invalidCredential :
          response.setError(ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.invalidCredential);
        case ExpensyFirebaseAuthExceptionCode.operationNotAllowed :
          response.setError(ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.operationNotAllowed);
        case ExpensyFirebaseAuthExceptionCode.userDisabled :
          response.setError(ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.userDisabled);
        case ExpensyFirebaseAuthExceptionCode.networkError :
          response.setError(ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.networkError);
        default:
          response.setError(ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.others);
      }
    }
    return response;
  }

}