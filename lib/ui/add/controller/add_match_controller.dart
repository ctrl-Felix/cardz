import 'package:doublehead/config/riverpod_dependencies.dart';
import 'package:doublehead/domain/match/match.dart';
import 'package:doublehead/domain/player/player.dart';
import 'package:doublehead/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../application/service/matches/matches_service.dart';

part 'add_match_controller.freezed.dart';
part 'add_match_controller.g.dart';

@freezed
abstract class AddMatchState with _$AddMatchState {
  const factory AddMatchState({
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    @Default([]) List<Player> players,
  }) = _AddMatchState;
}

@riverpod
class AddMatchController extends _$AddMatchController {
  final Logger _log = Logger();

  @override
  AddMatchState build() {
    return AddMatchState();
  }

  Future<bool> addMatch(String title, String description) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    final repo = ref.read(matchRepositoryProvider);
    final result = await repo.createMatch(
      title,
      description,
      MATCHSTATUS.ONGOING,
    );
    switch (result) {
      case Ok<TheMatch>():
        final matchParticipantRepo = ref.read(
          matchParticipantRepositoryProvider,
        );
        for (Player p in state.players) {
          matchParticipantRepo.addParticipantToMatch(
            p.id,
            result.value.matchId,
          );
        }
        state = state.copyWith(isLoading: false, errorMessage: null);
        ref.read(matchesServiceProvider.notifier).loadMatches();
        return true;
      case Error<TheMatch>():
        state = state.copyWith(
          isLoading: false,
          errorMessage: "error.creating_match",
        );
        return false;
    }
  }

  void selectPlayer(Player player) {
    if (!state.players.contains(player)) {
      _log.i("Adding new player to match");
      state = state.copyWith(players: [...state.players, player]);
    }
  }

  void removePlayer(Player player) {
    if (state.players.contains(player)) {
      state = state.copyWith(
        players: state.players.where((p) => p != player).toList(),
      );
    }
  }
}
