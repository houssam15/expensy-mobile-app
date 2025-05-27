part of "bloc.dart";

enum ExpensyWelcomePresentationRemoteStatus {
  success,failed,initial
}

class ExpensyWelcomePresentationRemoteState extends Equatable {
  ExpensyWelcomePresentationRemoteStatus status;

  ExpensyWelcomePresentationRemoteState({
    this.status = ExpensyWelcomePresentationRemoteStatus.initial
  });

  ExpensyWelcomePresentationRemoteState copyWith({
    ExpensyWelcomePresentationRemoteStatus? status
  }){
    return ExpensyWelcomePresentationRemoteState(
      status: status ?? this.status
    );
  }

  @override
  List<Object?> get props => [status];

}