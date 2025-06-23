part of "bloc.dart";

enum ExpensySignUpPresentationRemoteStatus {
  success,failed,initial
}

class ExpensySignUpPresentationRemoteState extends Equatable {
  ExpensySignUpPresentationRemoteStatus _status;
  ExpensySignUpForm _form;
  bool _showSubmitButtonLoading;
  ExpensyAlert _alert;
  bool _showGoogleButtonLoading;
  bool _showFacebookButtonLoading;

  ExpensySignUpPresentationRemoteState({
    ExpensySignUpPresentationRemoteStatus? status,
    ExpensySignUpForm? form,
    bool? showSubmitButtonLoading,
    ExpensyAlert? alert,
    bool? showGoogleButtonLoading,
    bool? showFacebookButtonLoading
  })
  :_status = status ?? ExpensySignUpPresentationRemoteStatus.initial
  ,_form = form ?? ExpensySignUpForm()
  ,_showSubmitButtonLoading = showSubmitButtonLoading ?? false
  ,_alert = alert ?? ExpensyAlert(),
  _showGoogleButtonLoading = showGoogleButtonLoading ?? false,
  _showFacebookButtonLoading = showFacebookButtonLoading ?? false;

  ExpensySignUpPresentationRemoteState copyWith({
    ExpensySignUpPresentationRemoteStatus? status,
    ExpensySignUpForm? form,
    bool? showSubmitButtonLoading,
    ExpensyAlert? alert,
    bool? showGoogleButtonLoading,
    bool? showFacebookButtonLoading
  }){
    return ExpensySignUpPresentationRemoteState(
      status: status ?? _status,
      form : form ?? _form,
      showSubmitButtonLoading : showSubmitButtonLoading ?? _showSubmitButtonLoading,
      alert: alert ?? _alert,
      showGoogleButtonLoading : showGoogleButtonLoading ?? _showGoogleButtonLoading,
      showFacebookButtonLoading : showFacebookButtonLoading ?? _showFacebookButtonLoading
    );
  }

  ExpensySignUpPresentationRemoteStatus getStatus(){
    return _status;
  }

  ExpensySignUpForm getForm(){
    return _form;
  }

  bool showSubmitButtonLoading(){
    return _showSubmitButtonLoading;
  }

  ExpensyAlert getAlert(){
    return _alert;
  }

  bool showGoogleButtonLoading(){
    return _showGoogleButtonLoading;
  }

  bool showFacebookButtonLoading(){
    return _showFacebookButtonLoading;
  }


  @override
  List<Object?> get props => [_status,_form,_showSubmitButtonLoading,_alert,_showFacebookButtonLoading,_showGoogleButtonLoading];

}