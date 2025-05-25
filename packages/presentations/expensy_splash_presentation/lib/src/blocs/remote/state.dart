part of "bloc.dart";

enum ExpensySplashPresentationRemoteStatus {
  initial,failed,success
}

class ExpensySplashPresentationRemoteState extends Equatable{

  ExpensySplashPresentationRemoteStatus status;

  ExpensySplashPresentationRemoteState({
    this.status = ExpensySplashPresentationRemoteStatus.initial
  });
  @override
  List<Object?> get props => [status];

}