import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../blocs/remote/bloc.dart";

class LightLogo extends StatelessWidget {
  const LightLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        "assets/images/logo-light.png",
        package: context.read<ExpensySplashPresentationRemoteBloc>().getConfig().packageName,
    );
  }
}
