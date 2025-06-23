import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:expensy_common/expensy_common.dart';
import 'package:expensy_sign_in_remote_data_source/expensy_sign_in_remote_data_source.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "../../models/models.dart";
import '../../config/config.dart';

part "event.dart";
part "state.dart";

class ExpensySignInPresentationRemoteBloc extends Bloc<ExpensySignInPresentationRemoteEvent,ExpensySignInPresentationRemoteState>{
  ExpensySignInPresentationRemoteBloc():super(ExpensySignInPresentationRemoteState()){
    on<ExpensySignInPresentationRemoteStarted>(_onStarted);
    on<ExpensySignInPresentationRemoteFormChanged>(_onFormChanged);
    on<ExpensySignInPresentationRemoteFormSubmited>(_onFormSubmited);
    on<ExpensySignInPresentationRemoteHideAlertClicked>(_onCloseAlertClicked);
    on<ExpensySignInPresentationRemoteGoogleRequested>(_onGoogleRequested);
    on<ExpensySignInPresentationRemoteFacebookRequested>(_onFacebookRequested);
  }

  ExpensySignInPresentationConfig? _config;
  ExpensySignInRemoteDataSource? _dataSource;

  ExpensySignInPresentationConfig getConfig(){
    _config ??= ExpensySignInPresentationConfig();
    return _config!;
  }

  ExpensySignInRemoteDataSource getDataSource(){
    _dataSource ??= ExpensySignInRemoteDataSource();
    return _dataSource!;
  }

  _onStarted(ExpensySignInPresentationRemoteEvent event,Emitter<ExpensySignInPresentationRemoteState> emit) async {

    emit(state.copyWith(status : ExpensySignInPresentationRemoteStatus.success));

  }

  _onFormChanged(ExpensySignInPresentationRemoteFormChanged event,Emitter<ExpensySignInPresentationRemoteState> emit) async {

      emit(state.copyWith(
          form : state.getForm()..setEmail(event.form.getEmail() ?? state.getForm().getEmail())
                         ..setPassword(event.form.getPassword() ?? state.getForm().getPassword())
      ));

  }

  _onFormSubmited(ExpensySignInPresentationRemoteFormSubmited event,Emitter<ExpensySignInPresentationRemoteState> emit) async {
    try{
      emit(state.copyWith(showSubmitButtonLoading: true));

      final response = await getDataSource().login(
          ExpensySignInRemoteDataSourceLoginRequest()
          ..setUser(
              User()
              ..setEmail(state.getForm().getEmail())
              ..setPassword(state.getForm().getPassword())
          )
      );

      //hide loading
      emit(state.copyWith(showSubmitButtonLoading: false));

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

      }else if(response.getError() == ExpensySignInRemoteDataSourceLoginResponseErrors.invalidDataProvided){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
              content: "Invalid data provided",
              isError: true,
              isVisible: true
            )
        ));

      }else if(response.getError() == ExpensySignInRemoteDataSourceLoginResponseErrors.incorrectEmailOrPassword){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
              content: "Incorrect email or password",
              isError: true,
              isVisible: true
            )
        ));

      }

    }catch(err){
      print(err);
    }
  }

  _onCloseAlertClicked(ExpensySignInPresentationRemoteHideAlertClicked event,Emitter<ExpensySignInPresentationRemoteState> emit) async {
    emit(state.copyWith(alert: ExpensyAlert().copyWith(isVisible: false)));
  }

  _onGoogleRequested(ExpensySignInPresentationRemoteGoogleRequested event,Emitter<ExpensySignInPresentationRemoteState> emit) async {
    try{
      emit(state.copyWith(showGoogleButtonLoading: true));

      final response = await getDataSource().loginWithGoogle();

      emit(state.copyWith(showGoogleButtonLoading: false));

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

      }else if(response.getError() == ExpensySignInRemoteDataSourceLoginWithGoogleResponseErrors.userCancelGoogleSignIn){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "User cancel operation",
                isWarning: true,
                isVisible: true
            )
        ));

      }else if(response.getError() == ExpensySignInRemoteDataSourceLoginWithGoogleResponseErrors.googleSignInFailed){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Google sign in failed",
                isError: true,
                isVisible: true
            )
        ));

      }

    }catch(err){

    }
  }



  _onFacebookRequested(ExpensySignInPresentationRemoteFacebookRequested event,Emitter<ExpensySignInPresentationRemoteState> emit) async {
    try{
      emit(state.copyWith(showFacebookButtonLoading: true));

      final response = await getDataSource().loginWithFacebook();

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

      }else if(response.getError() == ExpensySignInRemoteDataSourceLoginWithFacebookResponseErrors.facebookSignInFailed){

        emit(state.copyWith(
            alert: ExpensyAlert().copyWith(
                content: "Facebook sign in failed",
                isError: true,
                isVisible: true
            )
        ));

      }

    }catch(err){

    }
  }

}