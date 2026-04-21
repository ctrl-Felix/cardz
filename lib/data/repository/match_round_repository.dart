import 'dart:math';

import 'package:doublehead/data/source/drift/database.dart';
import 'package:doublehead/domain/match_round/match_round.dart';
import 'package:doublehead/utils/result.dart';
import 'package:drift/drift.dart';

class MatchRoundRepository {
  final AppDatabase db;
  const MatchRoundRepository({required this.db});

  Future<Result<List<MatchRound>>> getMatchRoundsForMatch(
    String matchId,
  ) async {
    final result = await (db.select(
      db.matchRoundTable,
    )..where((r) => r.matchId.equals(matchId))).get();

    return Result.ok(result.map((r) => r.toMatchRound()).toList());
  }

  Future<Result<int>> getMaxRoundId(matchId) async {
    try {
      final maxRound = db.matchRoundTable.roundId.max();
      final query = db.selectOnly(db.matchRoundTable)
        ..where(db.matchRoundTable.matchId.equals(matchId))
        ..addColumns([maxRound]);
      final result = await query.getSingle();
      return Result.ok(result.read(maxRound) ?? 0);
    } catch (e) {
      return Result.error(
        Exception("Error while inserting match round in db: $e"),
      );
    }
  }

  Future<Result<MatchRound>> createMatchRound(
    String matchId,
    String playerId,
    int roundId,
    int score,
  ) async {
    try {
      final result = await db
          .into(db.matchRoundTable)
          .insertReturning(
            MatchRoundTableCompanion.insert(
              matchId: matchId,
              playerId: playerId,
              roundId: roundId,
              score: score,
            ),
          );

      return Result.ok(result.toMatchRound());
    } catch (e) {
      return Result.error(
        Exception("Error while inserting match round in db: $e"),
      );
    }
  }

  Future<Result<List<String>>> getPlayerIdsWhichHaveRound(
    String matchId,
  ) async {
    try {
      final result = await (db.select(
        db.matchRoundTable,
      )..where((r) => r.matchId.equals(matchId))).get();

      return Result.ok(result.map((r) => r.playerId).toSet().toList());
    } catch (e) {
      return Result.error(
        Exception(
          "Error while parsing player ids that participated in match round",
        ),
      );
    }
  }

  Future<Result<void>> removeAllMatchRoundsForMatch(String matchId) async {
    try {
      await (db.delete(
        db.matchRoundTable,
      )..where((p) => p.matchId.equals(matchId))).go();
    } catch (e) {
      return Result.error(
        Exception("Error while deleting match rounds for match $matchId"),
      );
    }
    return Result.ok(null);
  }
}
