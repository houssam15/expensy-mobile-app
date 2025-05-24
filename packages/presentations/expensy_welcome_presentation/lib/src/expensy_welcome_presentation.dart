import "package:flutter/material.dart";
import "package:expensy_welcome_presentation/src/config/config.dart";

class ExpensyWelcomePresentation extends StatelessWidget {
  ExpensyWelcomePresentation({super.key});

  ExpensyWelcomePresentationConfig? _config;

  ExpensyWelcomePresentationConfig getConfig() {
    _config ??= ExpensyWelcomePresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expensy Welcome"),
      )
    );
  }
}
