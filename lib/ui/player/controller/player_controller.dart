import 'package:doublehead/config/riverpod_dependencies.dart';
import 'package:doublehead/domain/player/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../utils/result.dart';

part 'player_controller.g.dart';
part 'player_controller.freezed.dart';

@freezed
abstract class PlayerState with _$PlayerState {
  const factory PlayerState({
    Player? player,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _PlayerState;
}

@riverpod
class PlayerController extends _$PlayerController {
  @override
  PlayerState build() {
    return PlayerState();
  }

  Future<void> loadPlayer(String playerId) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    final repo = ref.read(playerRepositoryProvider);
    final player = await repo.getPlayer(playerId);
    switch (player) {
      case Ok<Player>():
        state = state.copyWith(player: player.value);
        break;
      case Error<Player>():
        state = state.copyWith(errorMessage: "error.load_data");
        break;
    }
    state = state.copyWith(isLoading: false);
  }

  Future<void> updatePlayerName(String newName) async {
    if (state.player == null) {
      return;
    }

    final repo = ref.read(playerRepositoryProvider);
    final result = await repo.updatePlayerName(state.player!.id, newName);
    switch (result) {
      case Ok<void>():
        await loadPlayer(state.player!.id);
        break;
      case Error<void>():
        state = state.copyWith(errorMessage: "error.update_user");
    }
  }
}
