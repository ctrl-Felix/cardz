import 'package:doublehead/ui/player/controller/player_controller.dart';
import 'package:doublehead/ui/shared/ui_app_sub_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class PlayerScreen extends ConsumerStatefulWidget {
  final String playerId;
  const PlayerScreen({super.key, required this.playerId});

  @override
  ConsumerState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends ConsumerState<PlayerScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(playerControllerProvider.notifier).loadPlayer(widget.playerId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(playerControllerProvider);
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
    return UiAppSubPage(title: player.name, child: ListView());
  }
}
