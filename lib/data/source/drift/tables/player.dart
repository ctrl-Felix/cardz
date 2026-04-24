import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

class PlayerTable extends Table {
  TextColumn get id => text().clientDefault(() => const Uuid().v4())();
  TextColumn get name => text().withLength(max: 32)();
  BoolColumn get isOwner => boolean().clientDefault(() => false)();
}
