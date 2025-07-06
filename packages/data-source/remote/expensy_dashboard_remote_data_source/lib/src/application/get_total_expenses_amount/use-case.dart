import "package:expensy_common/expensy_common.dart";
import "package:expensy_firebase/expensy_firebase.dart";
import "../../../expensy_dashboard_remote_data_source.dart";
import "../../models/models.dart";

part "request.dart";
part "response.dart";

class ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountUseCase {
  

  Future<ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountResponse> execute(ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountRequest request) async {

    ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountResponse response = ExpensyDashboardRemoteDataSourceGetTotalExpensesAmountResponse();

    try{
      
      if(request.getAggregationType() == AggregationType.month){

        var monthlyTotalCollection = ExpensyFirebase.getFirebaseStore()..loadCollection("monthly_totals");

        await monthlyTotalCollection.filterAndLoadDocument(
          whereClauses: [
            WhereClause(
                field: "userId",
                isEqualTo: ExpensyFirebase.getFirebaseStore().getDocumentReference(
                    collectionName: "users",
                    documentId: request.getUser()!.getUserId()!
                )
            ),
            WhereClause(field: "month",isEqualTo: request.getDate()?.month),
            WhereClause(field: "year",isEqualTo: request.getDate()?.year)
          ]
        );

        var snapshot = monthlyTotalCollection.getDocument();

        double total = 0;

        for(var doc in snapshot?.docs ?? []){

          var value = doc.data()["total"];

          if(value is num) total += value.toDouble();

        }

        response.setTotal(total);

      }else if(request.getAggregationType() == AggregationType.week){
        
      }
      
    }on ExpensyFirebaseFirestoreException catch (e){

      response.addMetaData(e);

      /*switch(e.getCode()){
        case ExpensyFirebaseFirestoreExceptionCode.canGetDocuments: response.setError(ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors.cantGetDocument);
        case ExpensyFirebaseFirestoreExceptionCode.collectionNotFound: response.setError(ExpensyDashboardRemoteDataSourceGetRecentExpensesResponseErrors.collectionNotFound);
        default : response.setIsHaveUnknownError(true);
      }*/

    }catch(err){

      response..addMetaData(err)..setIsHaveUnknownError(true);

    }

    return response;

  }
  
  

}
