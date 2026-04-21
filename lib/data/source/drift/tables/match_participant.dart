import 'package:drift/drift.dart';

class MatchParticipantTable extends Table {
  TextColumn get matchId => text()();
  TextColumn get playerId => text()();
  BoolColumn get isHidden => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();
  @override
  Set<Column<Object>> get primaryKey => {matchId, playerId};
}
