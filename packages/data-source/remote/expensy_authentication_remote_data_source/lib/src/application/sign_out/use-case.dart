import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class ExpensyAuthenticationRemoteDataSourceGetCurrentUserUseCase {

  Future<ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponse> execute(ExpensyAuthenticationRemoteDataSourceGetCurrentUserRequest request) async {
    ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponse response = ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponse();

    response.setUser(ExpensyFirebaseAuth().getCurrentUser());

    return response;
  }

}
