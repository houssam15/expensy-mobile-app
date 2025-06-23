part of "bloc.dart";

sealed class ExpensySignUpPresentationRemoteEvent extends ExpensyCommonBaseEvent{
  ExpensySignUpPresentationRemoteEvent(super.context);
}

class ExpensySignUpPresentationRemoteStarted extends ExpensySignUpPresentationRemoteEvent{
  ExpensySignUpPresentationRemoteStarted(super.context);
}

class ExpensySignUpPresentationRemoteFormChanged extends ExpensySignUpPresentationRemoteEvent{
  final ExpensySignUpForm form;
  ExpensySignUpPresentationRemoteFormChanged(super.context, {ExpensySignUpForm? form})
      :form = form ?? ExpensySignUpForm();
}

class ExpensySignUpPresentationRemoteFormSubmited extends ExpensySignUpPresentationRemoteEvent{
  ExpensySignUpPresentationRemoteFormSubmited(super.context);
}

class ExpensySignUpPresentationRemoteHideAlertClicked extends ExpensySignUpPresentationRemoteEvent{
  ExpensySignUpPresentationRemoteHideAlertClicked(super.context);
}

class ExpensySignUpPresentationRemoteGoogleRequested extends ExpensySignUpPresentationRemoteEvent{
  ExpensySignUpPresentationRemoteGoogleRequested(super.context);
}

class ExpensySignUpPresentationRemoteFacebookRequested extends ExpensySignUpPresentationRemoteEvent{
  ExpensySignUpPresentationRemoteFacebookRequested(super.context);
}
