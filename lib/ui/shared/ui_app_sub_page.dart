import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiAppSubPage extends StatelessWidget {
  final String title;
  final Widget child;
  const UiAppSubPage({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(title: title, actions: []),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 64.0, left: 8.0, right: 8.0),
          child: child,
        ),
      ),
    );
  }
}
