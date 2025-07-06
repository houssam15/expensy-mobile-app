import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class ExpensyAuthenticationRemoteDataSourceGetCurrentUserUseCase {

  Future<ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponse> execute(ExpensyAuthenticationRemoteDataSourceGetCurrentUserRequest request) async {
    ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponse response = ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponse();

    try{
      var user = ExpensyFirebase.getFirebaseAuth().getCurrentUser();

      response.addMetaData(user);

      if(user==null){

        response.setError(ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponseErrors.cantGetUser);

      }else{

        var userDetails = ExpensyFirebase.getFirebaseStore()..loadCollection("users");
        
        await userDetails.filterAndLoadDocument(
            whereClauses:[
              WhereClause(field: "email",isEqualTo: user.getEmail())
            ],
            limit: 1
        );

        if (userDetails.getDocument() != null && userDetails.getDocument()!.docs.isNotEmpty) {

          Map<String, dynamic>? userJson = userDetails.getDocument()!.docs.first.data();

          user
          ..setFirstName(userJson["firstName"])
          ..setLastName(userJson["lastName"])
          ..setAvatarPictureUrl(userJson["profileAvatarUrl"])
          ..setUserId(userDetails.getDocument()!.docs.first.id);

        } else {

          response.setError(ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponseErrors.cantGetUserDetails);

        }

      }

      response.setUser(user);

    }on ExpensyFirebaseFirestoreException catch (e){

      response.addMetaData(e);

      switch(e.getCode()){
        case ExpensyFirebaseFirestoreExceptionCode.cantFilterDocuments: response.setError(ExpensyAuthenticationRemoteDataSourceGetCurrentUserResponseErrors.cantGetUserDetails);
        default : response.setIsHaveUnknownError(true);
      }

    }catch(err){

      response..addMetaData(err)..setIsHaveUnknownError(true);

    }

    return response;
  }

}
