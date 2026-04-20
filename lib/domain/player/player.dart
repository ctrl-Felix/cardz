import 'package:doublehead/data/source/drift/database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

@freezed
abstract class Player with _$Player {
  const factory Player({required String name, required String id}) = _Player;
}

extension PlayerTableDataConverter on PlayerTableData {
  Player toPlayer() {
    return Player(name: name, id: id);
  }
}
