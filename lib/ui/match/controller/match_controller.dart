import 'package:doublehead/application/service/match_round/match_round_service.dart';
import 'package:doublehead/config/riverpod_dependencies.dart';
import 'package:doublehead/domain/player/player.dart';
import 'package:doublehead/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'match_controller.freezed.dart';
part 'match_controller.g.dart';

@freezed
abstract class MatchControllerState with _$MatchControllerState {
  const factory MatchControllerState({
    required String matchId,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    @Default([]) List<Player> participants,
  }) = _MatchControllerState;
}

@riverpod
class MatchController extends _$MatchController {
  final Logger _log = Logger();

  @override
  MatchControllerState build(String matchId) {
    return MatchControllerState(matchId: matchId);
  }

  Future<void> addMatchRound(Map<String, int> scores) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    final matchRoundRepo = ref.read(matchRoundRepositoryProvider);
    final matchRoundService = ref.read(
      matchRoundServiceProvider(matchId).notifier,
    );
    final roundIdResult = await matchRoundRepo.getMaxRoundId(matchId);
    late int roundId;
    switch (roundIdResult) {
      case Ok<int>():
        roundId = roundIdResult.value + 1;
        break;
      case Error<int>():
        state = state.copyWith(
          isLoading: false,
          errorMessage: "error.loading_data",
        );
        break;
    }
    for (final entry in scores.entries) {
      _log.i("Adding user score (${entry.value}) to round $roundId");
      await matchRoundRepo.createMatchRound(
        matchId,
        entry.key,
        roundId,
        entry.value,
      );
    }
    matchRoundService.load();
    state = state.copyWith(isLoading: false, errorMessage: null);
  }
}
