import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:cardcrew/routing/router.dart';
import 'package:cardcrew/ui/home_wrapper/widgets/home_wrapper_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveApp.router(
      title: 'Flutter Demo',
      routerConfig: router,
      supportedLocales: [
        Locale('en', ''), // English
        Locale('de', ''), // German
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate, // Important!
        GlobalWidgetsLocalizations.delegate,
      ],
      cupertinoLightTheme: CupertinoThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: CupertinoColors.systemGroupedBackground,
      ),
      cupertinoDarkTheme: CupertinoThemeData(brightness: Brightness.dark),
      materialLightTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      materialDarkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
    );
  }
}
