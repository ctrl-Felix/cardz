import 'package:cardcrew/application/service/matches/matches_service.dart';
import 'package:cardcrew/domain/player/player.dart';
import 'package:cardcrew/ui/match/controller/match_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import '../../../../application/service/match/match_service.dart';
import '../../../../application/service/player/player_service.dart';
import '../../../../domain/match_round/match_round.dart';
import '../../../../domain/participant/participant.dart';
import '../../../shared/ui_text.dart';

const double _headerHeight = 32;
const double _headerWidth = 64;
const double _rowHeight = 32;
const double _rowWidth = 48;
const double _separatorHeight = 1;

double _tableHeight(int rowCount) {
  return _headerHeight + rowCount * (_rowHeight + _separatorHeight);
}

double _tableWidth(int roundCount) {
  return leftHandSideWidth() + rightHandSideWith(roundCount);
}

double leftHandSideWidth() {
  return 100;
}

double rightHandSideWith(int roundCount) {
  return roundCount * (_rowWidth + _separatorHeight);
}

class RoundsScoreTable extends ConsumerWidget {
  final String matchId;
  const RoundsScoreTable({super.key, required this.matchId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(matchServiceProvider(matchId));

    List<int> playedRoundIds = [];
    Map<String, Map<int, int>> scoresForPlayer = {};
    for (Participant participant in state.participants) {
      scoresForPlayer[participant.player.id] = {};
    }
    for (MatchRound round in state.rounds) {
      if (!playedRoundIds.contains(round.roundId)) {
        playedRoundIds.add(round.roundId);
      }
      scoresForPlayer[round.playerId]![round.roundId] = round.score;
    }

    return SizedBox(
      height: _tableHeight(scoresForPlayer.keys.length),
      child: HorizontalDataTable(
        leftHandSideColumnWidth: leftHandSideWidth(),
        rightHandSideColumnWidth: rightHandSideWith(playedRoundIds.length),
        isFixedHeader: true,
        horizontalScrollbarStyle: const ScrollbarStyle(
          isAlwaysShown: false,
          thickness: 0,
        ),

        headerWidgets: [
          SizedBox(
            width: _headerWidth,
            height: _headerHeight,
            child: Align(
              alignment: Alignment.centerLeft,
              child: UiText.heading("Players"),
            ),
          ),
          ...playedRoundIds.map(
            (r) => SizedBox(
              width: _rowWidth,
              height: _headerHeight,
              child: Align(
                alignment: Alignment.center,
                child: UiText.heading("#$r"),
              ),
            ),
          ),
          if (playedRoundIds
              .isEmpty) // To avoid shrinking of the right hand header
            const SizedBox(width: _headerWidth, height: _headerHeight),
        ],
        rightSideChildren: state.participants
            .map(
              (p) => Row(
                children: playedRoundIds
                    .map(
                      (rid) => SizedBox(
                        width: _rowWidth,
                        height: _rowHeight,
                        child: Align(
                          alignment: Alignment.center,
                          child: UiText.heading(
                            scoresForPlayer[p.player.id]!.containsKey(rid)
                                ? scoresForPlayer[p.player.id]![rid].toString()
                                : "X",
                            color:
                                !scoresForPlayer[p.player.id]!.containsKey(rid)
                                ? CupertinoColors.inactiveGray
                                : null,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
            .toList(),
        leftSideChildren: state.participants
            .map(
              (p) => SizedBox(
                width: 64,
                height: 32,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: UiText.heading(p.player.name),
                ),
              ),
            )
            .toList(),
        rowSeparatorWidget: const Divider(
          color: Colors.black38,
          height: 1.0,
          thickness: 0.0,
        ),
      ),
    );
  }
}
