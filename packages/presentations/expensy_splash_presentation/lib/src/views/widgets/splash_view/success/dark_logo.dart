import "package:expensy_splash_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class DarkLogo extends StatelessWidget {
  const DarkLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        "assets/images/logo-dark.png",
        package: context.read<ExpensySplashPresentationRemoteBloc>().getConfig().packageName,
    );
  }
}
