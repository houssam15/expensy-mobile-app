import "package:expensy_splash_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/flutter_svg.dart";

class DarkLogo extends StatelessWidget {
  const DarkLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
        "assets/images/logo-dark.svg",
        package: context.read<ExpensySplashPresentationRemoteBloc>().getConfig().commonPackageName,
    );
  }
}
