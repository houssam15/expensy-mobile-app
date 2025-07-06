import "application/get_current_user/use-case.dart";

class ExpensySignUpRemoteDataSource{

  Future<ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponse> createUser([ExpensyAuthenticationRemoteDataSourceGetCurrentUserRequest? request]) async {
    return ExpensyAuthenticationRemoteDataSourceGetCurrentUserUseCase().execute(request ?? ExpensyAuthenticationRemoteDataSourceGetCurrentUserRequest());
  }

}