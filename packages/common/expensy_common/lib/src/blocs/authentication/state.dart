part of "bloc.dart";

enum ExpensyCommonAuthenticationStatus {
  authenticated,notAuthenticated
}

class ExpensyCommonAuthenticationState extends Equatable{
  ExpensyCommonAuthenticationStatus status;
  User? _currentUser;
  final int _version;

  ExpensyCommonAuthenticationState({
      this.status = ExpensyCommonAuthenticationStatus.notAuthenticated,
      User? currentUser,
      int version = 0
  }):_currentUser = currentUser,
  _version = version;

  ExpensyCommonAuthenticationState copyWith({
    ExpensyCommonAuthenticationStatus? status,
    User? currentUser,
    int? version
  }){
    return ExpensyCommonAuthenticationState(
      status: status ?? this.status,
      currentUser: currentUser ?? _currentUser,
      version: version ?? (_version + 1)
    );
  }

  User? getCurrentUser(){
    return _currentUser;
  }

  @override
  List<Object?> get props => [status,_currentUser,_version];
}