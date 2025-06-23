part of "bloc.dart";

enum ExpensySignInPresentationRemoteStatus {
  success,failed,initial
}

class ExpensySignInPresentationRemoteState extends Equatable {
  ExpensySignInPresentationRemoteStatus _status;
  ExpensySignInForm _form;
  bool _showSubmitButtonLoading;
  bool _showGoogleButtonLoading;
  bool _showFacebookButtonLoading;
  ExpensyAlert _alert;

  ExpensySignInPresentationRemoteState({
    ExpensySignInPresentationRemoteStatus? status,
    ExpensySignInForm? form,
    bool? showSubmitButtonLoading,
    bool? showGoogleButtonLoading,
    bool? showFacebookButtonLoading,
    ExpensyAlert? alert
  })
  :_status = status ?? ExpensySignInPresentationRemoteStatus.initial
  ,_form = form ?? ExpensySignInForm()
  ,_showSubmitButtonLoading = showSubmitButtonLoading ?? false
  ,_alert = alert ?? ExpensyAlert()
  ,_showGoogleButtonLoading = showGoogleButtonLoading ?? false
  ,_showFacebookButtonLoading = showFacebookButtonLoading ?? false;


  ExpensySignInPresentationRemoteState copyWith({
    ExpensySignInPresentationRemoteStatus? status,
    ExpensySignInForm? form,
    bool? showSubmitButtonLoading,
    bool? showGoogleButtonLoading,
    bool? showFacebookButtonLoading,
    ExpensyAlert? alert
  }){
     return ExpensySignInPresentationRemoteState(
          status : status ?? _status,
          form : form ?? _form,
          showSubmitButtonLoading : showSubmitButtonLoading ?? _showSubmitButtonLoading,
          showGoogleButtonLoading: showGoogleButtonLoading ?? _showGoogleButtonLoading,
         showFacebookButtonLoading: showFacebookButtonLoading ?? _showFacebookButtonLoading,
          alert: alert ?? _alert
     );
  }


  ExpensySignInPresentationRemoteStatus getStatus(){
    return _status;
  }

  ExpensySignInForm getForm(){
    return _form;
  }

  bool showSubmitButtonLoading(){
    return _showSubmitButtonLoading;
  }

  bool showGoogleButtonLoading(){
    return _showGoogleButtonLoading;
  }

  bool showFacebookButtonLoading(){
    return _showFacebookButtonLoading;
  }

  ExpensyAlert getAlert(){
    return _alert;
  }

  @override
  List<Object?> get props => [_status,_form,_showSubmitButtonLoading,_showGoogleButtonLoading,_showFacebookButtonLoading,_alert];

}