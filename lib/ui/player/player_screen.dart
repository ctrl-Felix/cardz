import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
import 'package:doublehead/ui/player/controller/player_controller.dart';
import 'package:doublehead/ui/shared/ui_app_sub_page.dart';
import 'package:doublehead/ui/shared/ui_carded_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../shared/ui_text.dart';

class PlayerScreen extends ConsumerStatefulWidget {
  final String playerId;
  const PlayerScreen({super.key, required this.playerId});

  @override
  ConsumerState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends ConsumerState<PlayerScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(playerControllerProvider.notifier).loadPlayer(widget.playerId);
    });
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(playerControllerProvider);
    final notifier = ref.read(playerControllerProvider.notifier);
    if (state.isLoading || state.player == null) {
      return UiAppSubPage(
        title: "Player",
        child: Center(
          child: LoadingAnimationWidget.hexagonDots(
            color: CupertinoColors.white,
            size: 200,
          ),
        ),
      );
    }
    final player = state.player!;
    return UiAppSubPage(
      title: player.name,
      child: ListView(
        children: [
          UiText.title("Change Player Name"),
          const SizedBox(height: 8),
          AdaptiveTextField(
            style: TextStyle(fontSize: 18),
            cupertinoDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: CupertinoColors.white,
            ),
            padding: EdgeInsets.all(16),
            placeholder: 'New Name',
            controller: _controller,
          ),
          const SizedBox(height: 8),
          AdaptiveButton(
            onPressed: () {
              notifier.updatePlayerName(_controller.text);
              _controller.clear();
            },
            label: "Update",
            minSize: Size(double.infinity, 0),
          ),
        ],
      ),
    );
  }
}
