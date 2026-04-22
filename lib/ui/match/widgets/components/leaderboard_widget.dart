import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../application/service/match/match_service.dart';
import '../../../shared/ui_carded_list.dart';
import '../../../shared/ui_text.dart';

class LeaderboardWidget extends ConsumerWidget {
  final String matchId;
  const LeaderboardWidget({super.key, required this.matchId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final leaderboard = ref.watch(
      matchServiceProvider(matchId).select((s) => s.leaderboard),
    );
    return SizedBox(
      width: double.infinity,
      child: UiCardedList(
        items: leaderboard
            .map(
              (l) => UiCardedListItem(
                title: l.player.name,
                leading: UiText.subtitle("${l.rank.toString()}."),
                trailing: UiText.subtitle(l.score.toString()),
              ),
            )
            .toList(),
      ),
    );
  }
}
