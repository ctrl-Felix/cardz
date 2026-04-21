import 'package:doublehead/application/service/matches/matches_service.dart';
import 'package:doublehead/config/riverpod_dependencies.dart';
import 'package:doublehead/domain/match_round/match_round.dart';
import 'package:doublehead/domain/participant/participant.dart';
import 'package:doublehead/domain/player/player.dart';
import 'package:doublehead/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/match/match.dart';

part 'match_service.freezed.dart';
part 'match_service.g.dart';

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
abstract class MatchServiceState with _$MatchServiceState {
  const factory MatchServiceState({
    required String matchId,
    @Default([]) List<MatchRound> rounds,
    @Default([]) List<Participant> participants,
    @Default([]) List<LeadboardEntry> leaderboard,
    @Default(null) TheMatch? match,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _MatchServiceState;

  const MatchServiceState._();

  List<Participant> get activeParticipants =>
      participants.where((p) => !p.isHidden).toList();

  List<Player> get players => participants.map((p) => p.player).toList();
}

@Riverpod(keepAlive: true)
class MatchService extends _$MatchService {
  Logger _log = Logger();

  @override
  MatchServiceState build(String matchId) {
    return MatchServiceState(matchId: matchId);
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
    final matchRoundRepo = ref.read(matchRoundRepositoryProvider);
    final participantIDs = await matchParticipantRepo.getParticipantsForMatch(
      state.matchId,
    );
    final List<Player> players = [];
    final playerRepo = ref.read(playerRepositoryProvider);
    for (String participantId in participantIDs) {
      final participant = await playerRepo.getPlayer(participantId);
      switch (participant) {
        case Ok<Player>():
          players.add(participant.value);
          break;
        case Error<Player>():
          state = state.copyWith(errorMessage: "error.load_data");
      }
    }
    final participantVisibility = await matchParticipantRepo
        .getVisibilityForMatch(state.matchId);

    final participantsThatPlayedARound =
        (await matchRoundRepo.getPlayerIdsWhichHaveRound(
          state.matchId,
        )).unwrap();

    state = state.copyWith(
      participants: players
          .map(
            (pl) => Participant(
              player: pl,
              isHidden: participantVisibility[pl.id]!,
              isDeletable: !participantsThatPlayedARound.contains(pl.id),
              matchId: state.matchId,
            ),
          )
          .toList(),
    );
  }

  void _calculateLeaderboard() {
    Map<String, int> scorePerPlayer = {};
    scorePerPlayer.addEntries(
      state.participants.map((e) => MapEntry(e.player.id, 0)),
    );
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
            player: state.participants
                .firstWhere((p) => p.player.id == e.key)
                .player,
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

  Future<void> changePlayerVisibility(String playerId, bool isHidden) async {
    final matchParticipantRepo = ref.read(matchParticipantRepositoryProvider);
    await matchParticipantRepo.setParticipantVisibility(
      state.matchId,
      playerId,
      isHidden,
    );
    await _loadParticipants();
  }

  Future<void> addParticipant(Player p) async {
    final matchParticipantRepo = ref.read(matchParticipantRepositoryProvider);
    await matchParticipantRepo.addParticipantToMatch(p.id, state.matchId);
    await _loadParticipants();
  }

  Future<void> removeParticipant(Participant p) async {
    if (p.isDeletable) {
      final matchParticipantRepo = ref.read(matchParticipantRepositoryProvider);
      await matchParticipantRepo.removeParticipantFromMatch(
        p.player.id,
        state.matchId,
      );
      await _loadParticipants();
    }
  }

  Future<void> completeMatch() async {
    if (state.match!.status == MATCHSTATUS.ONGOING) {
      final repo = ref.read(matchRepositoryProvider);
      final result = await repo.completeMatch(matchId);
      switch (result) {
        case Ok<void>():
          await load();
        case Error<void>():
          throw UnimplementedError();
      }
      ref.read(matchesServiceProvider.notifier).loadMatches();
    }
  }

  Future<void> deleteMatch() async {
    await ref
        .read(matchRoundRepositoryProvider)
        .removeAllMatchRoundsForMatch(matchId);
    ref
        .read(matchParticipantRepositoryProvider)
        .removeAllParticipantsFromMatch(matchId);
    ref.read(matchRepositoryProvider).removeMatch(matchId);
    await ref.read(matchesServiceProvider.notifier).loadMatches();
  }
}
