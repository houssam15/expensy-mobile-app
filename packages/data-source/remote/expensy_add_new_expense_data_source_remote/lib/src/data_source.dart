import "application/application.dart";

class DataSource {

  Future<AddNewExpenseResponse> addNewExpense([AddNewExpenseRequest? request]){
    return AddNewExpenseUseCase().execute(request ?? AddNewExpenseRequest());
  }

}