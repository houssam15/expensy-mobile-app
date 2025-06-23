import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";
import "package:flutter_facebook_auth/flutter_facebook_auth.dart";

part "request.dart";
part "response.dart";

class ExpensySignInRemoteDataSourceLoginWithFacebookUseCase {

  Future<ExpensySignInRemoteDataSourceLoginWithFacebookResponse> execute(ExpensySignInRemoteDataSourceLoginWithFacebookRequest request) async {
    ExpensySignInRemoteDataSourceLoginWithFacebookResponse response = ExpensySignInRemoteDataSourceLoginWithFacebookResponse();
    try{
      final LoginResult loginResult = await FacebookAuth.instance.login();
      await ExpensyFirebase.getFirebaseAuth().signInWithCredentialsForFacebook(
          token: loginResult.accessToken?.tokenString,
      );
    }catch(err){
      response..addMetaData(err)..setError(ExpensySignInRemoteDataSourceLoginWithFacebookResponseErrors.facebookSignInFailed);
    }
    return response;
  }

}