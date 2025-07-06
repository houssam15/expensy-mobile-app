import "application/get_current_user/use-case.dart";
import "application/sign_out/use-case.dart";
import "application/listen_auth_state_changes/use-case.dart";

class ExpensyAuthenticationRemoteDataSource{

  Future<ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponse> getCurrentUser([ExpensyAuthenticationRemoteDataSourceGetCurrentUserRequest? request]) async {
    return ExpensyAuthenticationRemoteDataSourceGetCurrentUserUseCase().execute(request ?? ExpensyAuthenticationRemoteDataSourceGetCurrentUserRequest());
  }

  Future<ExpensyAuthenticationRemoteDataSourceSignOutResponse> signOut([ExpensyAuthenticationRemoteDataSourceSignOutRequest? request]) async {
    return ExpensyAuthenticationRemoteDataSourceSignOutUseCase().execute(request ?? ExpensyAuthenticationRemoteDataSourceSignOutRequest());
  }

  Future<ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesResponse> listenAuthStateChanges([ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesRequest? request]) async {
    return ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesUseCase().execute(request ?? ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesRequest());
  }

}