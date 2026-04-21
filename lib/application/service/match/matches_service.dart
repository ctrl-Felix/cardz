import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/riverpod_dependencies.dart';
import '../../../domain/match/match.dart';
import '../../../utils/result.dart';

part 'matches_service.freezed.dart';
part 'matches_service.g.dart';

@freezed
abstract class MatchesServiceState with _$MatchesServiceState {
  const factory MatchesServiceState({
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    @Default([]) List<TheMatch> matches,
  }) = _MatchesServiceState;
}

@Riverpod(keepAlive: true)
class MatchesService extends _$MatchesService {
  Logger _log = Logger();

  @override
  MatchesServiceState build() {
    return MatchesServiceState();
  }

  Future<void> loadMatches() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    _log.i("Loading Matches");
    final matchRepo = ref.read(matchRepositoryProvider);
    final matches = await matchRepo.getMatches();
    switch (matches) {
      case Ok<List<TheMatch>>():
        state = state.copyWith(matches: matches.value);
        break;
      case Error<List<TheMatch>>():
        state = state.copyWith(errorMessage: "error.loading_data");
        break;
    }
    state = state.copyWith(isLoading: false);
  }
}
