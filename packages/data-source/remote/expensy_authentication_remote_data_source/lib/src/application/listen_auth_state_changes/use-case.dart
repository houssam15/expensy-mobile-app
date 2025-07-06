import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesUseCase {

  Future<ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesResponse> execute(ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesRequest request) async {
    ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesResponse response = ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesResponse();

    response.setUserChangesStream(
        ExpensyFirebase.getFirebaseAuth()
            .authStateChanges()
            .map((firebaseUser) => firebaseUser)
    );

    return response;
  }

}
