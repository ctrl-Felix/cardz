import 'package:cardcrew/domain/match/match.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger/logger.dart';

part 'home_controller.freezed.dart';
part 'home_controller.g.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    @Default([]) List<TheMatch> matches,
  }) = _HomeState;
}

@riverpod
class HomeController extends _$HomeController {
  final Logger _log = Logger();

  @override
  HomeState build() {
    return HomeState();
  }
}
