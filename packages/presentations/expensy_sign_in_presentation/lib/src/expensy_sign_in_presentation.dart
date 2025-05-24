import "package:flutter/material.dart";
import "package:expensy_sign_in_presentation/src/config/config.dart";

class ExpensySignInPresentation extends StatelessWidget {
  ExpensySignInPresentation({super.key});

  ExpensySignInPresentationConfig? _config;

  ExpensySignInPresentationConfig getConfig() {
    _config ??= ExpensySignInPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expensy Sign In"),
      )
    );
  }
}
