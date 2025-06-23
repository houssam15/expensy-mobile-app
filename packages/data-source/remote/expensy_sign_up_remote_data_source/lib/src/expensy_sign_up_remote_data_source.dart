import "application/create_user/use-case.dart";
import "application/create_user_with_google/use-case.dart";

class ExpensySignUpRemoteDataSource{

  Future<ExpensySignUpRemoteDataSourceCreateUserResponse> createUser([ExpensySignUpRemoteDataSourceCreateUserRequest? request]) async {
    return ExpensySignUpRemoteDataSourceCreateUserUseCase().execute(request ?? ExpensySignUpRemoteDataSourceCreateUserRequest());
  }

  Future<ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponse> createUserWithGoogle([ExpensySignUpRemoteDataSourceCreateUserWithGoogleRequest? request]) async {
    return ExpensySignUpRemoteDataSourceCreateUserWithGoogleUseCase().execute(request ?? ExpensySignUpRemoteDataSourceCreateUserWithGoogleRequest());
  }

}