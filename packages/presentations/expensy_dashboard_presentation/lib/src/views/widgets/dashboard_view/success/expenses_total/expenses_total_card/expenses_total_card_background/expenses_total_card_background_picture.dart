import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:expensy_dashboard_presentation/src/blocs/remote/bloc.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardBackgroundPicture extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardBackgroundPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: SvgPicture.asset(
        "assets/images/expense-total-image.svg",
        package: context.read<ExpensyDashboardPresentationRemoteBloc>().getConfig().packageName,
        width: 200,
        fit: BoxFit.contain
      ),
    );
  }
}
