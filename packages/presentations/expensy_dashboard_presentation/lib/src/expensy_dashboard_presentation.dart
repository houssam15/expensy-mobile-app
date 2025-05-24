import "package:flutter/material.dart";
import "package:expensy_dashboard_presentation/src/config/config.dart";

class ExpensyDashboardPresentation extends StatelessWidget {
  ExpensyDashboardPresentation({super.key});

  ExpensyDashboardPresentationConfig? _config;

  ExpensyDashboardPresentationConfig getConfig() {
    _config ??= ExpensyDashboardPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expensy Dashboard"),
      ),
    );
  }
}
