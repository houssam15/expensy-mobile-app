import "package:flutter_bloc/flutter_bloc.dart";
import "package:equatable/equatable.dart";

import "../../config/config.dart";

part "event.dart";
part "state.dart";

class ExpensySplashPresentationRemoteBloc extends Bloc<ExpensySplashPresentationRemoteEvent,ExpensySplashPresentationRemoteState>{
  ExpensySplashPresentationRemoteBloc():super(ExpensySplashPresentationRemoteState());

  ExpensySplashPresentationConfig? _config;

  ExpensySplashPresentationConfig getConfig() {
    _config ??= ExpensySplashPresentationConfig();
    return _config!;
  }
}