import 'package:cardcrew/config/riverpod_dependencies.dart';
import 'package:cardcrew/domain/player/player.dart';
import 'package:cardcrew/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_controller.freezed.dart';
part 'splash_controller.g.dart';

enum NextActionType { wait, completed, initOwner }

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState({
    @Default(NextActionType.wait) NextActionType nextAction,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _SplashState;
}

@riverpod
class SplashController extends _$SplashController {
  @override
  SplashState build() {
    return SplashState();
  }

  Future<void> setup() async {
    final repo = ref.read(playerRepositoryProvider);
    final owner = await repo.getOwner();
    switch (owner) {
      case Ok<Player>():
        break;
      case Error<Player>():
        state = state.copyWith(nextAction: NextActionType.initOwner);
        return;
    }

    state = state.copyWith(nextAction: NextActionType.completed);
  }

  Future<void> createOwner(String name) async {
    final repo = ref.read(playerRepositoryProvider);
    repo.createPlayer(name, isOwner: true);
    setup();
  }
}
