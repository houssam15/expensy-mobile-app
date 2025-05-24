import "package:flutter/material.dart";
import "package:expensy_sign_up_presentation/src/config/config.dart";

class ExpensySignUpPresentation extends StatelessWidget {
  ExpensySignUpPresentation({super.key});

  ExpensySignUpPresentationConfig? _config;

  ExpensySignUpPresentationConfig getConfig() {
    _config ??= ExpensySignUpPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Expensy Sign Up")));
  }
}
