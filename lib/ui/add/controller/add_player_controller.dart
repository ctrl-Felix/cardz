import 'package:doublehead/config/riverpod_dependencies.dart';
import 'package:doublehead/domain/player/player.dart';
import 'package:doublehead/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../application/service/player/player_service.dart';

part 'add_player_controller.freezed.dart';
part 'add_player_controller.g.dart';

@freezed
abstract class AddPlayerState with _$AddPlayerState {
  const factory AddPlayerState({
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _AddPlayerState;
}

@riverpod
class AddPlayerController extends _$AddPlayerController {
  @override
  AddPlayerState build() {
    return AddPlayerState();
  }

  Future<bool> addPlayer(String name) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    final repo = ref.read(playerRepositoryProvider);
    final result = await repo.createPlayer(name);
    switch (result) {
      case Ok<Player>():
        state = state.copyWith(isLoading: false, errorMessage: null);
        ref.read(playerServiceProvider.notifier).loadPlayers();
        return true;
      case Error<Player>():
        state = state.copyWith(
          isLoading: false,
          errorMessage: "error.creating_player",
        );
        return false;
    }
  }
}
