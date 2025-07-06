part of "bloc.dart";

class ExpensyCommonAppContextState extends Equatable{

  GlobalKey<NavigatorState> _navigatorKey;

  ExpensyCommonAppContextState({
    required GlobalKey<NavigatorState> navigatorKey
  }):_navigatorKey = navigatorKey;

  BuildContext? getCurrentContext(){
    return _navigatorKey.currentContext;
  }

  @override
  List<Object?> get props => [_navigatorKey];
}