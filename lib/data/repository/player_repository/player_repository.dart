import 'package:drift/drift.dart';

import '../../../domain/player/player.dart';
import '../../../utils/result.dart';
import '../../source/drift/database.dart';

class PlayerRepository {
  final AppDatabase db;

  PlayerRepository({required this.db});

  Future<Result<Player>> createPlayer(String name) async {
    try {
      final result = await db
          .into(db.playerTable)
          .insertReturning(PlayerTableCompanion.insert(name: name));

      return Result.ok(result.toPlayer());
    } catch (e) {
      return Result.error(Exception("Error while inserting player in db: $e"));
    }
  }

  Future<Result<List<Player>>> getPlayers() async {
    final result = await (db.select(
      db.playerTable,
    )..orderBy([(t) => OrderingTerm(expression: t.id)])).get();
    return Result.ok(result.map((e) => e.toPlayer()).toList());
  }
}
