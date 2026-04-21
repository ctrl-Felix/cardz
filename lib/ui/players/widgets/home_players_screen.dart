import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/routing/routes.dart';
import 'package:doublehead/ui/players/controller/player_controller.dart';
import 'package:doublehead/ui/shared/app_app_bar.dart';
import 'package:doublehead/ui/shared/ui_card.dart';
import 'package:doublehead/ui/shared/ui_carded_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../application/service/player/player_service.dart';
import '../../shared/ui_text.dart';

class HomePlayersScreen extends ConsumerStatefulWidget {
  const HomePlayersScreen({super.key});

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomePlayersScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(playerServiceProvider.notifier).loadPlayers();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(playerServiceProvider);
    return AdaptiveScaffold(
      appBar: adaptiveAppBar(context),

      body: ListView(
        physics: const ClampingScrollPhysics(),

        padding: const EdgeInsets.all(8),
        children: [
          const SizedBox(height: 120),
          UiText.title("Players"),
          const SizedBox(height: 8),
          if (state.players.isEmpty)
            UiCard(
              child: Center(
                child: UiText.body("You haven't added a player yet."),
              ),
            ),

          if (state.players.isNotEmpty)
            UiCardedList(
              items: state.players.indexed.map((record) {
                final (index, item) = record;
                return UiCardedListItem(
                  title: item.name,
                  trailing: Icon(CupertinoIcons.chevron_right),
                  subtitle: "Banana",
                  onTap: () {
                    context.push(Routes.playerPath(item.id));
                  },
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
