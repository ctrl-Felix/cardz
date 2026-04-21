import 'package:doublehead/routing/routes.dart';
import 'package:doublehead/ui/add/widgets/add_match_screen.dart';
import 'package:doublehead/ui/add/widgets/add_player_screen.dart';
import 'package:doublehead/ui/add/widgets/add_screen.dart';
import 'package:doublehead/ui/home_wrapper/widgets/home_wrapper_screen.dart';
import 'package:doublehead/ui/match/widgets/match_screen.dart';
import 'package:doublehead/ui/players/widgets/home_players_screen.dart';
import 'package:go_router/go_router.dart';

import '../ui/home/widgets/home_screen.dart';

final router = GoRouter(
  initialLocation: Routes.home,
  routes: [
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
            ),
          ],
        ),
      ],
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
    ),
  ],
);
