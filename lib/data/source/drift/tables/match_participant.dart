import 'package:drift/drift.dart';

class MatchParticipantTable extends Table {
  TextColumn get matchId => text()();
  TextColumn get playerId => text()();

  @override
  Set<Column<Object>> get primaryKey => {matchId, playerId};
}
