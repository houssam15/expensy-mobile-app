import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:expensy_dashboard_presentation/src/blocs/remote/bloc.dart";
import "expenses_total_card_background_gradient_color.dart";
import "expenses_total_card_background_picture.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardBackground extends StatelessWidget {
  ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardBackground({super.key,required this.child});
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Gradient background & picture
                ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardBackgroundGradientColor(),
                ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardBackgroundPicture(),
                // Foreground content
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
