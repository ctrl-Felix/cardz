import 'package:drift/drift.dart';

class MatchRoundTable extends Table {
  TextColumn get matchId => text()();
  TextColumn get playerId => text()();
  IntColumn get roundId => integer()();
  IntColumn get score => integer()();
  DateTimeColumn get createdAt => dateTime().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {matchId, playerId, roundId};
}
