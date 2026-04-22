import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiAppSubPage extends StatelessWidget {
  final String title;
  final Widget child;
  const UiAppSubPage({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    final double topPadding = PlatformInfo.isIOS26OrHigher() ? 64.0 : 8.0;
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(title: title, actions: []),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: topPadding, left: 8.0, right: 8.0),
          child: child,
        ),
      ),
    );
  }
}
