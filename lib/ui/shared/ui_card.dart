import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:flutter/material.dart';

class UiCard extends StatelessWidget {
  final Widget child;
  final bool disablePadding;
  const UiCard({super.key, required this.child, this.disablePadding = false});

  @override
  Widget build(BuildContext context) {
    return AdaptiveCard(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: 8, // Android only
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: disablePadding
              ? EdgeInsetsGeometry.all(0)
              : const EdgeInsets.only(
                  top: 16.0,
                  left: 16,
                  right: 8,
                  bottom: 16,
                ),
          child: child,
        ),
      ),
    );
  }
}
