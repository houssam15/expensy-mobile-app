import "package:flutter/material.dart";
import "package:expensy_settings_presentation/src/config/config.dart";

class ExpensySettingsPresentation extends StatelessWidget {
  ExpensySettingsPresentation({super.key});

  ExpensySettingsPresentationConfig? _config;

  ExpensySettingsPresentationConfig getConfig() {
    _config ??= ExpensySettingsPresentationConfig();
    return _config!;
  }

  String getRoute() {
    return getConfig().route;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expensy Settings"),
      )
    );
  }
}
