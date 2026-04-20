import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/riverpod_dependencies.dart';
import '../../../domain/player/player.dart';
import '../../../utils/result.dart';

part 'player_service.freezed.dart';
part 'player_service.g.dart';

@freezed
abstract class PlayerServiceState with _$PlayerServiceState {
  const factory PlayerServiceState({
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    @Default([]) List<Player> players,
  }) = _PlayerServiceState;
}

@Riverpod(keepAlive: true)
class PlayerService extends _$PlayerService {
  Logger _log = Logger();

  @override
  PlayerServiceState build() {
    return PlayerServiceState();
  }

  Future<void> loadPlayers() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    _log.i("Loading Players");
    final repo = ref.read(playerRepositoryProvider);
    final players = await repo.getPlayers();
    switch (players) {
      case Ok<List<Player>>():
        state = state.copyWith(players: players.value);
        break;
      case Error<List<Player>>():
        state = state.copyWith(errorMessage: "error.loading_data");
        break;
    }
    state = state.copyWith(isLoading: false);
  }

  List<Player> filteredPlayersList(String searchTerm) {
    if (searchTerm.isEmpty) {
      return state.players;
    }
    final loweredSearchTerm = searchTerm.replaceAll(" ", "").toLowerCase();
    List<Player> searchResult = state.players
        .where(
          (p) => p.name
              .replaceAll(" ", "")
              .toLowerCase()
              .contains(loweredSearchTerm),
        )
        .toList();
    return searchResult;
  }
}
