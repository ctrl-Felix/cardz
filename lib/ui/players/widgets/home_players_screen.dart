import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/ui/players/controller/player_controller.dart';
import 'package:doublehead/ui/shared/app_app_bar.dart';
import 'package:doublehead/ui/shared/ui_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
                child: UiText.caption("You haven't added a player yet."),
              ),
            ),

          if (state.players.isNotEmpty)
            AdaptiveCard(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              elevation: 8, // Android only
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: state.players.indexed.map((record) {
                    final (index, item) = record;
                    return AdaptiveListTile(
                      title: Text(item.name),
                      subtitle: Text("Match Count: 0"),
                      trailing: Icon(CupertinoIcons.chevron_right),
                      showDivider: index != state.players.length - 1,
                    );
                  }).toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
