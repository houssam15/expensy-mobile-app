import "package:flutter/material.dart";
import "../widgets/widgets.dart";
class ExpensySplashPresentationViewSuccessPage extends StatelessWidget {
  const ExpensySplashPresentationViewSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {

    print("App theme : ${MediaQuery.of(context).platformBrightness}");

    return Scaffold(
      body: SafeArea(
          child: Center(
            child: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? DarkLogo()
                : LightLogo(),
          )
      ),
    );
  }
}
