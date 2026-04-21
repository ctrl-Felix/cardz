import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/source/drift/database.dart';

part 'match_round.freezed.dart';

@freezed
abstract class MatchRound with _$MatchRound {
  const factory MatchRound({
    required String matchId,
    required String playerId,
    required int roundId,
    required int score,
    required DateTime? createdAt,
  }) = _MatchRound;
}

extension MatchRoundTableConverter on MatchRoundTableData {
  MatchRound toMatchRound() {
    return MatchRound(
      matchId: matchId,
      playerId: playerId,
      roundId: roundId,
      score: score,
      createdAt: createdAt,
    );
  }
}
