import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class ExpensySignInRemoteDataSourceGetCurrentUserUseCase {

  Future<ExpensySignInRemoteDataSourceGetCurrentUserResponse> execute(ExpensySignInRemoteDataSourceGetCurrentUserRequest request) async {
    ExpensySignInRemoteDataSourceGetCurrentUserResponse response = ExpensySignInRemoteDataSourceGetCurrentUserResponse();
    try{
      final user = ExpensyFirebase.getFirebaseAuth().getCurrentUser();
      if(user==null){
        response.addMetaData("User is null");
      }else{
        response.setUser(User()..setEmail(user.email));
      }
    }catch(err){
      response..addMetaData(err)..setIsHaveError(true);
    }
    return response;
  }

}