import 'package:equatable/equatable.dart';
import 'package:expensy_common/expensy_common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:expensy_sign_up_remote_data_source/expensy_sign_up_remote_data_source.dart";
import '../../config/config.dart';
import '../../models/models.dart';

part "event.dart";
part "state.dart";

class ExpensySignUpPresentationRemoteBloc extends Bloc<ExpensySignUpPresentationRemoteEvent,ExpensySignUpPresentationRemoteState>{
  ExpensySignUpPresentationRemoteBloc():super(ExpensySignUpPresentationRemoteState()){
    on<ExpensySignUpPresentationRemoteStarted>(_onStarted);
    on<ExpensySignUpPresentationRemoteFormChanged>(_onFormChanged);
    on<ExpensySignUpPresentationRemoteFormSubmited>(_onFormSubmited);
    on<ExpensySignUpPresentationRemoteHideAlertClicked>(_onCloseAlertClicked);
    on<ExpensySignUpPresentationRemoteGoogleRequested>(_onGoogleRequested);
    on<ExpensySignUpPresentationRemoteFacebookRequested>(_onFacebookRequested);
  }

  ExpensySignUpPresentationConfig? _config;
  ExpensySignUpRemoteDataSource? _remoteDataSource;

  ExpensySignUpPresentationConfig getConfig(){
    _config ??= ExpensySignUpPresentationConfig();
    return _config!;
  }

  ExpensySignUpRemoteDataSource getRemoteDataSource(){
    _remoteDataSource ??= ExpensySignUpRemoteDataSource();
    return _remoteDataSource!;
  }

  _onStarted(ExpensySignUpPresentationRemoteEvent event,Emitter<ExpensySignUpPresentationRemoteState> emit) async {
    emit(state.copyWith(status: ExpensySignUpPresentationRemoteStatus.success));
  }

  _onFormChanged(ExpensySignUpPresentationRemoteFormChanged event,Emitter<ExpensySignUpPresentationRemoteState> emit) async {

    emit(state.copyWith(
        form : state.getForm()
          ..setFullName(event.form.getFullName() ?? state.getForm().getFullName())
          ..setEmail(event.form.getEmail() ?? state.getForm().getEmail())
          ..setPassword(event.form.getPassword() ?? state.getForm().getPassword())
          ..setRepeatedPassword(event.form.getRepeatedPassword() ?? state.getForm().getRepeatedPassword())  
    ));

  }

  _onFormSubmited(ExpensySignUpPresentationRemoteFormSubmited event,Emitter<ExpensySignUpPresentationRemoteState> emit) async {
    try{
      emit(state.copyWith(showSubmitButtonLoading: true));

      final response = await getRemoteDataSource().createUser(
          ExpensySignUpRemoteDataSourceCreateUserRequest()
            ..setUser(
                User()
                  ..setEmail(state.getForm().getEmail())
                  ..setPassword(state.getForm().getPassword())
                  ..setFullName(state.getForm().getFullName())  
            )
      );

      //hide loading
      emit(state.copyWith(showSubmitButtonLoading: false));

      if(response.isSuccess()){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Sign up successfully",
                isSuccess: true,
                isVisible: true
            )
        ));

        //redirection to dashboard
        //
        //

      }else if(response.getError() == ExpensySignUpRemoteDataSourceCreateUserResponseErrors.emptyFieldsNotAllowed){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Empty fields not allowed",
                isError: true,
                isVisible: true
            )
        ));

      }else if(response.getError() == ExpensySignUpRemoteDataSourceCreateUserResponseErrors.emailAlreadyExist){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "User already exist , sign in ?",
                isError: true,
                isVisible: true
            )
        ));

      }else if(response.getError() == ExpensySignUpRemoteDataSourceCreateUserResponseErrors.invalidEmail){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Invalid email , please correct it",
                isError: true,
                isVisible: true
            )
        ));

      }else if(response.getError() == ExpensySignUpRemoteDataSourceCreateUserResponseErrors.weakPassword){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Password is too weak !",
                isError: true,
                isVisible: true
            )
        ));

      }else if(response.getError() == ExpensySignUpRemoteDataSourceCreateUserResponseErrors.others){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "unexpected errors happen , please try later",
                isError: true,
                isVisible: true
            )
        ));

      }


    }catch(err){
      print(err);
    }
  }

  _onCloseAlertClicked(ExpensySignUpPresentationRemoteHideAlertClicked event,Emitter<ExpensySignUpPresentationRemoteState> emit) async {
    emit(state.copyWith(alert: ExpensyAlert().copyWith(isVisible: false)));
  }

  _onGoogleRequested(ExpensySignUpPresentationRemoteGoogleRequested event,Emitter<ExpensySignUpPresentationRemoteState> emit) async {
    try{
      emit(state.copyWith(showGoogleButtonLoading: true));

      final response = await getRemoteDataSource().createUserWithGoogle();

      emit(state.copyWith(showGoogleButtonLoading: false));

      if(response.isSuccess()){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Sign up successfully",
                isSuccess: true,
                isVisible: true
            )
        ));

        //redirection to dashboard
        //
        //

      }else if(response.getError() == ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.userCancelGoogleSignIn){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "User cancel operation",
                isWarning: true,
                isVisible: true
            )
        ));

      }else if(response.getError() == ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.emailAlreadyInUse){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Email already exist",
                isError: true,
                isVisible: true
            )
        ));

      }else if(response.getError() == ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.invalidCredential){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Invalid credentials",
                isError: true,
                isVisible: true
            )
        ));

      }else if(response.getError() == ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.operationNotAllowed){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Operation not allowed",
                isError: true,
                isVisible: true
            )
        ));

      }else if(response.getError() == ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.userDisabled){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "This user is disabled",
                isError: true,
                isVisible: true
            )
        ));

      }else if(response.getError() == ExpensySignUpRemoteDataSourceCreateUserWithGoogleResponseErrors.networkError){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Check your network please ?",
                isError: true,
                isVisible: true
            )
        ));

      }

    }catch(err){

    }
  }

  _onFacebookRequested(ExpensySignUpPresentationRemoteFacebookRequested event,Emitter<ExpensySignUpPresentationRemoteState> emit) async {
    try{
      emit(state.copyWith(showFacebookButtonLoading: true));

     /* final response = await getDataSource().loginWithFacebook();

      emit(state.copyWith(showFacebookButtonLoading: false));

      if(response.isSuccess()){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Sign in successfully",
                isSuccess: true,
                isVisible: true
            )
        ));

        //redirection to dashboard
        //
        //

      }else if(response.getError() == ExpensySignUpRemoteDataSourceLoginWithFacebookResponseErrors.facebookSignInFailed){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Facebook sign in failed",
                isError: true,
                isVisible: true
            )
        ));

      }*/

    }catch(err){

    }
  }

}