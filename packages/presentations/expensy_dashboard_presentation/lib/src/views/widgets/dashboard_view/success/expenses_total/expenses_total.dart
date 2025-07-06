import "package:expensy_dashboard_presentation/src/blocs/remote/bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/flutter_svg.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesTotal extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Expense total
          Text(
              "Expense total",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900
              ),
          ),
          //Card
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      // Gradient background
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.purple.withOpacity(0.8),
                              Colors.blue.withOpacity(0.8),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),

                      // Background SVG image
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: SvgPicture.asset(
                          "assets/images/expense-total-image.svg",
                          package: context.read<ExpensyDashboardPresentationRemoteBloc>().getConfig().packageName,
                          width: 200,
                          fit: BoxFit.contain,
                        ),
                      ),

                      // Foreground content
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //Total
                                  Text(
                                      "\$3,745",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white
                                      ),
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        padding:EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color:Colors.red,
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                        ),
                                        child: Text(
                                            "+\$380",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                            ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                          "Than last month",
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 7,
                                            fontWeight: FontWeight.w900
                                          ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
