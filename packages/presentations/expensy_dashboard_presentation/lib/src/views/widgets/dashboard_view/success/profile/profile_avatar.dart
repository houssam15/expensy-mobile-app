import "package:expensy_dashboard_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/svg.dart";

class ExpensyDashboardPresentationViewSuccessPageProfileAvatar extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageProfileAvatar({super.key});



  @override
  Widget build(BuildContext context) {

    final bloc = context.read<ExpensyDashboardPresentationRemoteBloc>();
    final state = bloc.state;

    final defaultPicture = SvgPicture.asset(
      "assets/images/default-avatar.svg",
      package: bloc.getConfig().commonPackageName,
      fit: BoxFit.cover,
    );

    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade200,
      ),
      child: ClipOval(
        child: state.cantGetUser()
        ?defaultPicture
        :Image.network(
          state.getUser().getAvatarPictureUrl() ?? "",
          errorBuilder:(context, error, stackTrace) => defaultPicture,
        ),
      ),
    );
  }
}
