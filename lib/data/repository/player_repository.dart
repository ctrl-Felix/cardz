import 'package:drift/drift.dart';

import '../../domain/player/player.dart';
import '../../utils/result.dart';
import '../source/drift/database.dart';

class PlayerRepository {
  final AppDatabase db;

  PlayerRepository({required this.db});

  Future<Result<Player>> createPlayer(
    String name, {
    bool isOwner = false,
  }) async {
    try {
      final result = await db
          .into(db.playerTable)
          .insertReturning(
            PlayerTableCompanion.insert(name: name, isOwner: Value(isOwner)),
          );

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

  Future<Result<Player>> getPlayer(String playerId) async {
    final result = await (db.select(
      db.playerTable,
    )..where((p) => p.id.equals(playerId))).get();

    if (result.length == 1) {
      return Result.ok(result.first.toPlayer());
    }

    return Result.error(
      Exception("No unique entry found, either 0 or multiple results"),
    );
  }

  Future<Result<Player>> getOwner() async {
    final result = await (db.select(
      db.playerTable,
    )..where((p) => p.isOwner.equals(true))).get();

    if (result.length == 1) {
      return Result.ok(result.first.toPlayer());
    }
    if (result.isEmpty) {
      return Result.error(Exception("No owner found"));
    }
    throw Exception("Multiple owner found. This should never happen");
  }

  Future<Result<void>> updatePlayerName(String playerId, String newName) async {
    final result =
        await (db.update(db.playerTable)..where((p) => p.id.equals(playerId)))
            .write(PlayerTableCompanion(name: Value(newName)));

    if (result != 1) {
      return Result.error(
        Exception("Error while updating, either no row updated or more than 1"),
      );
    }
    return Result.ok(null);
  }
}
