import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import "../../../../../blocs/remote/bloc.dart";

class ExpensyDashboardPresentationViewSuccessPageHeaderProfile extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageHeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          context.read<ExpensyCommonAuthenticationBloc>().add(ExpensyCommonAuthenticationSignOutRequested());
        },
        child: Icon(FontAwesomeIcons.signOut,size: 18)
    );
  }
}
