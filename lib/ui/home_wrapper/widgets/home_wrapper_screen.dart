import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/application/service/matches/matches_service.dart';
import 'package:doublehead/application/service/player/player_service.dart';
import 'package:doublehead/routing/routes.dart';
import 'package:doublehead/ui/home/widgets/home_add_popup_screen.dart';
import 'package:doublehead/ui/shared/app_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../home/widgets/home_screen.dart';
import '../../players/widgets/home_players_screen.dart';

class HomeWrapperScreen extends ConsumerStatefulWidget {
  final int? initOnScreen;
  final StatefulNavigationShell navigationShell;

  const HomeWrapperScreen({
    super.key,
    this.initOnScreen,
    required this.navigationShell,
  });

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeWrapperScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(matchesServiceProvider.notifier).loadMatches();
      ref.read(playerServiceProvider.notifier).loadPlayers();
    });
  }

  void _handlePageViewChange(int index) {
    widget.navigationShell.goBranch(index);
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      minimizeBehavior: TabBarMinimizeBehavior.never,

      // appBar: adaptiveAppBar(context),
      bottomNavigationBar: AdaptiveBottomNavigationBar(
        items: [
          AdaptiveNavigationDestination(icon: 'house.fill', label: 'Home'),
          AdaptiveNavigationDestination(icon: 'person.fill', label: 'Players'),
        ],
        selectedIndex: widget.navigationShell.currentIndex,
        onTap: _handlePageViewChange,
      ),
      body: widget.navigationShell,
    );
  }
}
