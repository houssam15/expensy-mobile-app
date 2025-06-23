import "package:flutter/material.dart";

class ExpensyCommonRequest{
  BuildContext? _context;

  void setContext(BuildContext? context){
    _context = context;
  }

  BuildContext? getContext(){
    return _context;
  }
}