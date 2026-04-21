import 'package:doublehead/config/riverpod_dependencies.dart';
import 'package:doublehead/domain/match_round/match_round.dart';
import 'package:doublehead/domain/player/player.dart';
import 'package:doublehead/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/match/match.dart';

part 'match_round_service.freezed.dart';
part 'match_round_service.g.dart';

@freezed
abstract class LeadboardEntry with _$LeadboardEntry {
  const factory LeadboardEntry({
    required Player player,
    required int score,
    required bool isShared,
    required int rank,
  }) = _LeadboardEntry;
}

@freezed
abstract class MatchRoundServiceState with _$MatchRoundServiceState {
  const factory MatchRoundServiceState({
    required String matchId,
    @Default([]) List<MatchRound> rounds,
    @Default([]) List<Player> participants,
    @Default([]) List<LeadboardEntry> leaderboard,
    @Default(null) TheMatch? match,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _MatchRoundServiceState;
}

@Riverpod(keepAlive: true)
class MatchRoundService extends _$MatchRoundService {
  Logger _log = Logger();

  @override
  MatchRoundServiceState build(String matchId) {
    return MatchRoundServiceState(matchId: matchId);
  }

  Future<void> _loadMatch() async {
    _log.i("Loading Match ${state.matchId}");
    final matchRepo = ref.read(matchRepositoryProvider);
    final match = await matchRepo.getMatch(state.matchId);
    switch (match) {
      case Ok<TheMatch>():
        state = state.copyWith(match: match.value);
        break;
      case Error<TheMatch>():
        state = state.copyWith(errorMessage: "error.loading_data");
        break;
    }
  }

  Future<void> _loadRounds() async {
    final matchRoundRepo = ref.read(matchRoundRepositoryProvider);
    final roundsResult = await matchRoundRepo.getMatchRoundsForMatch(
      state.matchId,
    );
    switch (roundsResult) {
      case Ok<List<MatchRound>>():
        state = state.copyWith(rounds: roundsResult.value);
        break;
      case Error<List<MatchRound>>():
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }

  Future<void> _loadParticipants() async {
    final matchParticipantRepo = ref.read(matchParticipantRepositoryProvider);
    final participantIDs = await matchParticipantRepo.getParticipantsForMatch(
      matchId,
    );
    final List<Player> participants = [];
    final playerRepo = ref.read(playerRepositoryProvider);
    for (String participantId in participantIDs) {
      final participant = await playerRepo.getPlayer(participantId);
      switch (participant) {
        case Ok<Player>():
          participants.add(participant.value);
          break;
        case Error<Player>():
          state = state.copyWith(errorMessage: "error.load_data");
      }
    }
    state = state.copyWith(participants: participants);
  }

  void _calculateLeaderboard() {
    Map<String, int> scorePerPlayer = {};
    scorePerPlayer.addEntries(state.participants.map((e) => MapEntry(e.id, 0)));
    for (MatchRound round in state.rounds) {
      scorePerPlayer[round.playerId] =
          scorePerPlayer[round.playerId]! + round.score;
    }

    Map<int, int> scoreToRank = {};
    final scores = scorePerPlayer.values.toList();
    scores.sort((e1, e2) => e2 - e1);
    int tmpRank = 1;
    for (int score in scores) {
      if (scoreToRank.containsKey(score)) {
        tmpRank += 1;
      } else {
        scoreToRank[score] = tmpRank;
        tmpRank += 1;
      }
    }
    List<LeadboardEntry> leaderboard = scorePerPlayer.entries
        .map(
          (e) => LeadboardEntry(
            player: state.participants.firstWhere((p) => p.id == e.key),
            score: e.value,
            isShared:
                scorePerPlayer.values.where((s) => s == e.value).length > 1,
            rank: scoreToRank[e.value]!,
          ),
        )
        .toList();
    leaderboard.sort((a, b) => b.score - a.score);
    state = state.copyWith(leaderboard: leaderboard);
  }

  Future<void> load() async {
    await _loadMatch();
    await _loadRounds();
    await _loadParticipants();
    _calculateLeaderboard();
  }
}
