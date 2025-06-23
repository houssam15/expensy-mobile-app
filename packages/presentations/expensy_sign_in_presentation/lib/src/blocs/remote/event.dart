part of "bloc.dart";

sealed class ExpensySignInPresentationRemoteEvent extends ExpensyCommonBaseEvent{
  ExpensySignInPresentationRemoteEvent(super.context);
}

class ExpensySignInPresentationRemoteStarted extends ExpensySignInPresentationRemoteEvent{
  ExpensySignInPresentationRemoteStarted(super.context);
}

class ExpensySignInPresentationRemoteFormChanged extends ExpensySignInPresentationRemoteEvent{
  final ExpensySignInForm form;
  ExpensySignInPresentationRemoteFormChanged(super.context, {ExpensySignInForm? form})
  :form = form ?? ExpensySignInForm();
}

class ExpensySignInPresentationRemoteFormSubmited extends ExpensySignInPresentationRemoteEvent{
  ExpensySignInPresentationRemoteFormSubmited(super.context);
}

class ExpensySignInPresentationRemoteHideAlertClicked extends ExpensySignInPresentationRemoteEvent{
  ExpensySignInPresentationRemoteHideAlertClicked(super.context);
}

class ExpensySignInPresentationRemoteGoogleRequested extends ExpensySignInPresentationRemoteEvent{
  ExpensySignInPresentationRemoteGoogleRequested(super.context);
}

class ExpensySignInPresentationRemoteFacebookRequested extends ExpensySignInPresentationRemoteEvent{
  ExpensySignInPresentationRemoteFacebookRequested(super.context);
}
