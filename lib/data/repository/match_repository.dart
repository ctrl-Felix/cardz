import 'package:doublehead/data/source/drift/database.dart';
import 'package:doublehead/domain/match/match.dart';
import 'package:drift/drift.dart';

import '../../utils/result.dart';

class MatchRepository {
  final AppDatabase db;

  MatchRepository({required this.db});

  Future<Result<TheMatch>> createMatch(
    String title,
    String? description,
    MATCHSTATUS status,
  ) async {
    try {
      final result = await db
          .into(db.matchTable)
          .insertReturning(
            MatchTableCompanion.insert(
              title: title,
              description: Value.absentIfNull(description),
              status: status.toString(),
            ),
          );

      return Result.ok(result.toTheMatch());
    } catch (e) {
      return Result.error(Exception("Error while inserting match in db: $e"));
    }
  }

  Future<Result<List<TheMatch>>> getMatches() async {
    final result = await (db.select(
      db.matchTable,
    )..orderBy([(t) => OrderingTerm(expression: t.createdAt)])).get();
    return Result.ok(result.map((e) => e.toTheMatch()).toList());
  }

  Future<Result<TheMatch>> getMatch(String matchId) async {
    final result = await (db.select(
      db.matchTable,
    )..where((m) => m.id.equals(matchId))).getSingleOrNull();

    if (result == null) {
      return Result.error(Exception("No match found"));
    }
    return Result.ok(result.toTheMatch());
  }

  Future<Result<void>> completeMatch(String matchId) async {
    final result =
        await (db.update(
          db.matchTable,
        )..where((p) => p.id.equals(matchId))).write(
          MatchTableCompanion(status: Value(MATCHSTATUS.FINISHED.toString())),
        );

    if (result == 0) {
      return Result.error(Exception("No rows updated on complete Match"));
    }
    return Result.ok(null);
  }

  Future<Result<void>> removeMatch(String matchId) async {
    try {
      await (db.delete(db.matchTable)..where((p) => p.id.equals(matchId))).go();
    } catch (e) {
      return Result.error(
        Exception("Error while deleting match rounds for match $matchId"),
      );
    }
    return Result.ok(null);
  }
}
