import 'package:doublehead/domain/player/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant.freezed.dart';

@freezed
abstract class Participant with _$Participant {
  const factory Participant({
    required Player player,
    required bool isHidden,
    required bool isDeletable,
    required String matchId,
  }) = _Participant;
}
