import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/routing/routes.dart';
import 'package:doublehead/ui/shared/ui_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AdaptiveAppBar adaptiveAppBar(BuildContext context) {
  return AdaptiveAppBar(
    title: "Cardz",
    actions: [
      AdaptiveAppBarAction(
        icon: Icons.add,
        iosSymbol: 'plus',
        onPressed: () => context.push(Routes.add),
      ),
    ],
    useNativeToolbar: true,
  );
}
