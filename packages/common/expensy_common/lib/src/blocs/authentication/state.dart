part of "bloc.dart";

enum ExpensyCommonAuthenticationStatus {
  authenticated,notAuthenticated
}

class ExpensyCommonAuthenticationState extends Equatable{
  ExpensyCommonAuthenticationStatus status;

  ExpensyCommonAuthenticationState({
      this.status = ExpensyCommonAuthenticationStatus.notAuthenticated
  });

  ExpensyCommonAuthenticationState copyWith({
    ExpensyCommonAuthenticationStatus? status
  }){
    return ExpensyCommonAuthenticationState(
      status: status ?? this.status
    );
  }

  @override
  List<Object?> get props => [status];
}