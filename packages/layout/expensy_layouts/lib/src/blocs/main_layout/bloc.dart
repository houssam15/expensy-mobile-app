import 'package:expensy_common/expensy_common.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/main_layout/bottom_navigation_bar_add_item.dart';
import '../../widgets/main_layout/bottom_navigation_bar_expenses_item.dart';
import '../../widgets/main_layout/bottom_navigation_bar_home_item.dart';

part "event.dart";
part "state.dart";

class ExpensyLayoutsMainLayoutBloc extends Bloc<ExpensyLayoutsMainLayoutEvent,ExpensyLayoutsMainLayoutState>{

  ExpensyLayoutsMainLayoutBloc():super(ExpensyLayoutsMainLayoutState()){
   on<ExpensyLayoutsMainLayoutBottomNavigationBarItemClicked>(_onNavigationBarClicked);
  }

  _onNavigationBarClicked(ExpensyLayoutsMainLayoutBottomNavigationBarItemClicked event,Emitter<ExpensyLayoutsMainLayoutState> emit) async {
    try{
      switch(event.route){
        case ExpensyCommonAppRoutes.dashboardRoute:
        case ExpensyCommonAppRoutes.expensesAddNewExpenseFormRoute:
        case ExpensyCommonAppRoutes.expensesListRoute:
        default:
      }
    }catch(err){

    }
  }

}