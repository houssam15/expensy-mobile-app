import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class ExpensyAuthenticationRemoteDataSourceSignOutUseCase {

  Future<ExpensyAuthenticationRemoteDataSourceSignOutResponse> execute(ExpensyAuthenticationRemoteDataSourceSignOutRequest request) async {
    ExpensyAuthenticationRemoteDataSourceSignOutResponse response = ExpensyAuthenticationRemoteDataSourceSignOutResponse();

    ExpensyFirebase.getFirebaseAuth().signOut();

    return response;
  }

}
