import "dart:async";

import "package:flutter/cupertino.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:equatable/equatable.dart";
import "package:expensy_authentication_remote_data_source/expensy_authentication_remote_data_source.dart";
import "../../../expensy_common.dart";
import "../base/base_event.dart";

part "event.dart";
part "state.dart";

class ExpensyCommonAuthenticationBloc extends Bloc<ExpensyCommonAuthenticationEvent,ExpensyCommonAuthenticationState>{
  ExpensyCommonAuthenticationBloc(this.navigatorKey):super(ExpensyCommonAuthenticationState()){
    on<ExpensyCommonAuthenticationAppStarted>(_appStarted);
    on<ExpensyCommonAuthenticationAuthStateListenerRegistrationRequested>(_registerAuthStateChangesListener);
    on<ExpensyCommonAuthenticationUserChanged>(_onUserChanged);
  }

  final GlobalKey<NavigatorState> navigatorKey;
  ExpensyAuthenticationRemoteDataSource? _remoteDataSource;
  StreamSubscription<User?>? _authSubscription;

  ExpensyAuthenticationRemoteDataSource getRemoteDataSource(){
    _remoteDataSource ??= ExpensyAuthenticationRemoteDataSource();
    return _remoteDataSource!;
  }




  _appStarted(ExpensyCommonAuthenticationAppStarted event , Emitter<ExpensyCommonAuthenticationState> emit) async{
    final response = await getRemoteDataSource().getCurrentUser();
    if(!response.isSuccess() || !response.hasUser()){
      emit(state.copyWith(status: ExpensyCommonAuthenticationStatus.notAuthenticated));
    }else{
      emit(state.copyWith(
          status: ExpensyCommonAuthenticationStatus.authenticated,
          currentUser: response.getUser()
      ));
    }
  }

  _registerAuthStateChangesListener(ExpensyCommonAuthenticationAuthStateListenerRegistrationRequested event , Emitter<ExpensyCommonAuthenticationState> emit) async {
    final response = await getRemoteDataSource().listenAuthStateChanges(
      ExpensyAuthenticationRemoteDataSourceListenAuthStateChangesRequest(),
    );

    _authSubscription?.cancel();

    _authSubscription = response.getUserChangesStream()?.listen((user) {
      add(ExpensyCommonAuthenticationUserChanged(user));
    });
  }

  _onUserChanged(ExpensyCommonAuthenticationUserChanged event, Emitter<ExpensyCommonAuthenticationState> emit) {
    if (event.user == null) {
      emit(state.copyWith(status: ExpensyCommonAuthenticationStatus.notAuthenticated,currentUser: event.user));
    } else {
      emit(state.copyWith(status: ExpensyCommonAuthenticationStatus.authenticated,currentUser: event.user));
    }
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    return super.close();
  }
}