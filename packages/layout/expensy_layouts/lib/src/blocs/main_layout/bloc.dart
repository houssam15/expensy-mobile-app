import 'package:expensy_common/expensy_common.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/main_layout/bottom_navigation_bar_add_item.dart';
import '../../widgets/main_layout/bottom_navigation_bar_expenses_item.dart';
import '../../widgets/main_layout/bottom_navigation_bar_home_item.dart';
import "../../widgets/widgets.dart";

part "event.dart";
part "state.dart";

class ExpensyLayoutsMainLayoutBloc extends Bloc<ExpensyLayoutsMainLayoutEvent,ExpensyLayoutsMainLayoutState>{

  ExpensyLayoutsMainLayoutBloc():super(ExpensyLayoutsMainLayoutState()){
    on<ExpensyLayoutsMainLayoutStarted>(_onStarted);
    on<ExpensyLayoutsMainLayoutBottomNavigationBarItemClicked>(_onNavigationBarClicked);
  }

  _onStarted(ExpensyLayoutsMainLayoutStarted event,Emitter<ExpensyLayoutsMainLayoutState> emit) async {
    Widget? widget = getWidgetFromRouteName(event.context,state.getSelectedRoute());
    if(widget != null){
      emit(state.copyWith(
          selectedRoute: state.getSelectedRoute(),
          body: widget
      ));
    }
  }

  _onNavigationBarClicked(ExpensyLayoutsMainLayoutBottomNavigationBarItemClicked event,Emitter<ExpensyLayoutsMainLayoutState> emit) async {
    try{
      Widget? widget = getWidgetFromRouteName(event.context,event.route);
      if(widget != null){
        emit(state.copyWith(
           selectedRoute: event.route,
           body: widget
        ));
      }
    }catch(_){}
  }

  Widget? getWidgetFromRouteName(BuildContext context, String routeName) {
    try{
      final materialApp = context.findAncestorWidgetOfExactType<MaterialApp>();
      final routes = materialApp?.routes;

      if (routes != null && routes.containsKey(routeName)) {
        final builder = routes[routeName];
        return builder!(context);
      }
    }catch(_){}

    return null;
  }

}

