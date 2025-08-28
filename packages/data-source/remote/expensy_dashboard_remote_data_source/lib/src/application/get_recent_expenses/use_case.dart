import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";

part "request.dart";
part "response.dart";

class ExpensyDashboardRemoteDataSourceGetRecentExpensesUseCase {

  Future<ExpensyDashboardRemoteDataSourceGetRecentExpensesResponse> execute(ExpensyDashboardRemoteDataSourceGetRecentExpensesRequest request) async {

    ExpensyDashboardRemoteDataSourceGetRecentExpensesResponse response = ExpensyDashboardRemoteDataSourceGetRecentExpensesResponse();

    try{
      var instance = ExpensyFirebase.getFirebaseStore()..loadCollection("expenses");

      await instance.loadDocument();

      response.addMetaData(instance);

      response.setItems(await ExpensyExpense.toList(instance.getDocument()?.docs));

    }on ExpensyFirebaseFirestoreException catch (e){

      response.addMetaData(e);

      switch(e.getCode()){
        case ExpensyFirebaseFirestoreExceptionCode.canGetDocuments: response.setError(ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors.cantGetDocument);
        case ExpensyFirebaseFirestoreExceptionCode.collectionNotFound: response.setError(ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors.collectionNotFound);
        default : response.setIsHaveUnknownError(true);
      }

    }catch(err){

      response..addMetaData(err)..setIsHaveUnknownError(true);

    }

    return response;

  }

}
