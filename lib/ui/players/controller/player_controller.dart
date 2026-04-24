import 'package:cardcrew/config/riverpod_dependencies.dart';
import 'package:cardcrew/domain/match/match.dart';
import 'package:cardcrew/domain/player/player.dart';
import 'package:cardcrew/utils/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger/logger.dart';

part 'player_controller.freezed.dart';
part 'player_controller.g.dart';

@freezed
abstract class PlayerState with _$PlayerState {
  const factory PlayerState({
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _PlayerState;
}

@riverpod
class PlayerController extends _$PlayerController {
  final Logger _log = Logger();

  @override
  PlayerState build() {
    return PlayerState();
  }
}
