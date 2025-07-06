import "package:flutter/material.dart";

class ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardBackgroundGradientColor extends StatelessWidget {
  const ExpensyDashboardPresentationViewSuccessPageExpensesTotalCardBackgroundGradientColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      );
  }
}
