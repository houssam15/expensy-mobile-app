import "package:flutter/material.dart";
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ExpensyDashboardPresentationViewInitialPage extends StatelessWidget {
  const ExpensyDashboardPresentationViewInitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoadingAnimationWidget.threeArchedCircle(
              color: Colors.grey,
              size: 20
            ),
            SizedBox(height: 10),
            Text(
                "loading...",
                style: TextStyle(
                  color: Colors.grey
                ),
            )
          ],
        ),
      ),
    );
  }

}
