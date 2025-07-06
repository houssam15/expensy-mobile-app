import "application/login/use-case.dart";
import "application/login_with_facebook/use-case.dart";
import "application/logout/use-case.dart";
import "application/login_with_google/use-case.dart";

class ExpensySignInRemoteDataSource{

  ///Login user with email and password
  Future<ExpensySignInRemoteDataSourceLoginResponse> login([ExpensySignInRemoteDataSourceLoginRequest? request]) async{
    return ExpensySignInRemoteDataSourceLoginUseCase().execute(request ?? ExpensySignInRemoteDataSourceLoginRequest());
  }

  ///Login with google
  Future<ExpensySignInRemoteDataSourceLoginWithGoogleResponse> loginWithGoogle([ExpensySignInRemoteDataSourceLoginWithGoogleRequest? request]) async{
    return ExpensySignInRemoteDataSourceLoginWithGoogleUseCase().execute(request ?? ExpensySignInRemoteDataSourceLoginWithGoogleRequest());
  }

  ///Login with facebook
  Future<ExpensySignInRemoteDataSourceLoginWithFacebookResponse> loginWithFacebook([ExpensySignInRemoteDataSourceLoginWithFacebookRequest? request]) async {
    return ExpensySignInRemoteDataSourceLoginWithFacebookUseCase().execute(request ?? ExpensySignInRemoteDataSourceLoginWithFacebookRequest());
  }

  ///SignOut user
  Future<ExpensySignInRemoteDataSourceLogOutResponse> signOut([ExpensySignInRemoteDataSourceLogOutRequest? request]) async {
    return ExpensySignInRemoteDataSourceLogOutUseCase().execute(request ?? ExpensySignInRemoteDataSourceLogOutRequest());
  }

}