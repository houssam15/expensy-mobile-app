part of "use_case.dart";

enum AddNewExpenseResponseErrors {
  categoryOrProductNotFound
}

class AddNewExpenseResponse extends ExpensyCommonResponse{

  AddNewExpenseResponseErrors? _error;

  AddNewExpenseResponseErrors? get error => _error;

  set error(AddNewExpenseResponseErrors? error) => _error = error;

  @override
  List<Object?> get props => [...super.props,_error];

}