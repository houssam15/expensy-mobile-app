part of "use-case.dart";

class ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesRequest extends ExpensyCommonRequest{
  void Function(User?)? _callback;

  void setCallback(Function(User?)? callback){
    _callback = callback;
  }

  void Function(User?)? getCallback(){
    return _callback;
  }
}