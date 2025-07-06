import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class ExpensySignInRemoteDataSourceLogOutUseCase {

  Future<ExpensySignInRemoteDataSourceLogOutResponse> execute(ExpensySignInRemoteDataSourceLogOutRequest request) async {
    ExpensySignInRemoteDataSourceLogOutResponse response = ExpensySignInRemoteDataSourceLogOutResponse();
    try{
        await ExpensyFirebase.getFirebaseAuth().signOut();

        if(ExpensyFirebase.getFirebaseAuth().hasError()){
          response.setIsSignOutFailed(true);
        }else{
          response.setIsSignOutSuccess(true);
        }
    }catch(err){
      response..addMetaData(err)..setIsHaveUnknownError(true);
    }
    return response;
  }

}