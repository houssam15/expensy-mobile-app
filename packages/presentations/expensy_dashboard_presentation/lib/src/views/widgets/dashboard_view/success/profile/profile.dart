import "package:expensy_dashboard_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/svg.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ExpensyDashboardPresentationViewSuccessPageProfile extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //profile avatar
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
            child: ClipOval(
              child: SvgPicture.asset(
                "assets/images/default-avatar.svg",
                package: context.read<ExpensyDashboardPresentationRemoteBloc>().getConfig().commonPackageName,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
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
                     "Houssam elatmani",
                     style: TextStyle(
                       fontWeight: FontWeight.w900,
                       fontSize: 10
                     ),
                 )
              ]
            ),
          ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300], // or any light color
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // rounded corners
                  ),
                ),
                onPressed: (){

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "This month",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w900
                        ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                        FontAwesomeIcons.angleDown,
                        size: 15,
                        weight: 15,
                        color: Colors.black,
                    )
                  ],
                )
            )
        ],
      ),
    );
  }
}
