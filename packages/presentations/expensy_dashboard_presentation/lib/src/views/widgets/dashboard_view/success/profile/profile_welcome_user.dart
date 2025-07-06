import "package:expensy_dashboard_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/svg.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ExpensyDashboardPresentationViewSuccessPageProfileWelcomeUser extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageProfileWelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                  fontWeight: FontWeight.w900,
                  fontSize: 10
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${context.read<ExpensyDashboardPresentationRemoteBloc>().state.getUser().getFullName()}",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 10
              ),
            )
          ]
      ),
    );
  }
}
