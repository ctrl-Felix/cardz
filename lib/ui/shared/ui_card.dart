import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/material.dart';

class UiCard extends StatelessWidget {
  final Widget child;
  const UiCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AdaptiveCard(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: 8, // Android only
      child: ClipRRect(borderRadius: BorderRadius.circular(20), child: child),
    );
  }
}
