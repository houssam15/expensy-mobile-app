import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";
import "package:google_sign_in/google_sign_in.dart";

part "request.dart";
part "response.dart";

class ExpensySignInRemoteDataSourceLoginWithGoogleUseCase {

  Future<ExpensySignInRemoteDataSourceLoginWithGoogleResponse> execute(ExpensySignInRemoteDataSourceLoginWithGoogleRequest request) async {
    ExpensySignInRemoteDataSourceLoginWithGoogleResponse response = ExpensySignInRemoteDataSourceLoginWithGoogleResponse();
    try{
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
      if(gUser == null){
        response.setError(ExpensySignInRemoteDataSourceLoginWithGoogleResponseErrors.userCancelGoogleSignIn);
      }
      try{
        final GoogleSignInAuthentication? gAuth = await gUser?.authentication;
        await ExpensyFirebase.getFirebaseAuth().signInWithCredentialsForGoogle(
            accessToken: gAuth?.accessToken,
            idToken: gAuth?.idToken
        );
      }catch(err){
        response
          ..addMetaData(err)
          ..setError(ExpensySignInRemoteDataSourceLoginWithGoogleResponseErrors.googleSignInFailed);
      }

    }catch(err){
      response..addMetaData(err)..setIsHaveUnknownError(true);
    }
    return response;
  }

}