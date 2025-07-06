import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../blocs/blocs.dart";
import "../widgets/widgets.dart";

class ExpensyLayoutsMainLayout extends StatefulWidget {
  const ExpensyLayoutsMainLayout({super.key});

  @override
  State<ExpensyLayoutsMainLayout> createState() => _ExpensyLayoutsMainLayoutState();
}

class _ExpensyLayoutsMainLayoutState extends State<ExpensyLayoutsMainLayout> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExpensyLayoutsMainLayoutBloc>(
      create: (context) => ExpensyLayoutsMainLayoutBloc(),
      child: SafeArea(
        child: BlocBuilder<ExpensyLayoutsMainLayoutBloc,ExpensyLayoutsMainLayoutState>(
          builder: (context,state) {
            return Scaffold(
              body: state.getBody(),
              bottomNavigationBar: ExpensyLayoutsMainLayoutBottomNavigationBar()
            );
          },
        ),
      ),
    );
  }
}
