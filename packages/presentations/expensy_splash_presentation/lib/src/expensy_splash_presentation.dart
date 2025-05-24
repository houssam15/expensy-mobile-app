import "package:flutter/material.dart";
import "package:expensy_splash_presentation/src/config/config.dart";

class ExpensySplashPresentation extends StatelessWidget {
  ExpensySplashPresentation({super.key});

  ExpensySplashPresentationConfig? _config;

  ExpensySplashPresentationConfig getConfig() {
    _config ??= ExpensySplashPresentationConfig();
    return _config!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expensy Splash", style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
