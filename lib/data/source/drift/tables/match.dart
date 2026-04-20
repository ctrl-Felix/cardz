import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

class MatchTable extends Table {
  TextColumn get id => text().clientDefault(() => const Uuid().v4())();
  TextColumn get title => text().withLength(max: 32)();
  TextColumn get description => text().nullable()();
  TextColumn get status => text()();
  DateTimeColumn get createdAt =>
      dateTime().clientDefault(() => DateTime.now())();
}
