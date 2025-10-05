import 'package:expensy_common/expensy_common.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part "request.dart";
part "response.dart";

class GetCurrentExpenseUseCase {
  Future<GetCurrentExpenseResponse> execute(GetCurrentExpenseRequest request) async {
    final response = GetCurrentExpenseResponse();
    try{
      final instance = FirebaseFirestore.instance;
      final now = DateTime.now();
      final startOfDay = DateTime(now.year, now.month, now.day);
      final startOfNextDay = DateTime(now.year, now.month, now.day + 1);
      final document = await instance
          .collection("expenses")
          .where(
            "createdAt",
            isGreaterThanOrEqualTo: startOfDay,
            isLessThan: startOfNextDay,
          )
          .orderBy("createdAt",descending: true)
          .limit(1)
          .get();
      if(document.docs.isNotEmpty){
        response.expense = await ExpensyExpense.fromJson(document.docs.first);
      }
      response.addMetaData(document);
    }catch(err){
      response..addMetaData(err)..setIsHaveUnknownError(true);
    }
    return response;
  }
}
