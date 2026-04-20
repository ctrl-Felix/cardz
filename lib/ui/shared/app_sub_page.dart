import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSubPage extends StatelessWidget {
  final String title;
  final Widget child;
  const AppSubPage({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(title: title, actions: []),
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.only(top: 64.0), child: child),
      ),
    );
  }
}
