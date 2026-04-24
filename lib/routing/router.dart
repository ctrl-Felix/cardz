import 'package:cardcrew/routing/routes.dart';
import 'package:cardcrew/ui/add/widgets/add_match_screen.dart';
import 'package:cardcrew/ui/add/widgets/add_player_screen.dart';
import 'package:cardcrew/ui/add/widgets/add_screen.dart';
import 'package:cardcrew/ui/home_wrapper/widgets/home_wrapper_screen.dart';
import 'package:cardcrew/ui/match/widgets/match_screen.dart';
import 'package:cardcrew/ui/players/widgets/home_players_screen.dart';
import 'package:cardcrew/ui/splash/widgets/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/home/widgets/home_screen.dart';
import '../ui/match/subscreens/manage_players_screen.dart';
import '../ui/player/player_screen.dart';

final router = GoRouter(
  initialLocation: Routes.splash,
  routes: [
    GoRoute(path: Routes.splash, builder: (c, s) => SplashScreen()),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomeWrapperScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.home,
              builder: (context, state) => HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.players, // you'll need this route
              builder: (context, state) => HomePlayersScreen(),
              routes: [],
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: Routes.player,
      builder: (context, state) =>
          PlayerScreen(playerId: state.pathParameters["playerId"]!),
    ),

    GoRoute(
      path: Routes.add,
      builder: (context, state) => AddScreen(),
      routes: [],
    ),
    GoRoute(path: Routes.addPlayer, builder: (c, s) => AddPlayerScreen()),
    GoRoute(path: Routes.addMatch, builder: (c, s) => AddMatchScreen()),
    GoRoute(
      path: Routes.match,
      builder: (c, s) => MatchScreen(matchId: s.pathParameters["matchId"]!),
      routes: [],
    ),
    GoRoute(
      path: Routes.matchManagePlayers,
      builder: (c, s) =>
          ManagePlayersScreen(matchId: s.pathParameters["matchId"]!),
    ),
  ],
);
