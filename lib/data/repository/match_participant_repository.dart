import 'package:doublehead/domain/match/match.dart';
import 'package:doublehead/utils/result.dart';
import 'package:drift/drift.dart';

import '../../domain/player/player.dart';
import '../source/drift/database.dart';

class MatchParticipantRepository {
  final AppDatabase db;

  MatchParticipantRepository({required this.db});

  Future<Result<void>> addParticipantToMatch(
    String playerId,
    String matchId,
  ) async {
    final result =
        await (db.select(db.matchParticipantTable)..where(
              (p) => p.playerId.equals(playerId) & p.matchId.equals(matchId),
            ))
            .get();

    if (result.isEmpty) {
      try {
        await db
            .into(db.matchParticipantTable)
            .insert(
              MatchParticipantTableCompanion.insert(
                matchId: matchId,
                playerId: playerId,
              ),
            );
      } catch (e) {
        return Result.error(
          Exception("Error while inserting match participant"),
        );
      }
      return Result.ok(null);
    }
    return Result.error(Exception("Participant already added"));
  }

  Future<Result<void>> removeParticipantFromMatch(
    String playerId,
    String matchId,
  ) async {
    final result =
        await (db.select(db.matchParticipantTable)..where(
              (p) => p.playerId.equals(playerId) & p.matchId.equals(matchId),
            ))
            .get();

    if (result.isEmpty) {
      return Result.error(Exception("Participant not found"));
    }

    try {
      await (db.delete(db.matchParticipantTable)..where(
            (p) => p.playerId.equals(playerId) & p.matchId.equals(matchId),
          ))
          .go();
    } catch (e) {
      return Result.error(Exception("Error while deleting match participant"));
    }
    return Result.ok(null);
  }

  Future<bool> checkIfPlayerParticipantOfMatch(
    Player player,
    TheMatch match,
  ) async {
    final result =
        await (db.select(db.matchParticipantTable)..where(
              (p) =>
                  p.playerId.equals(player.id) &
                  p.matchId.equals(match.matchId),
            ))
            .get();
    return result.isNotEmpty;
  }

  Future<List<String>> getParticipantsForMatch(String matchId) async {
    final result =
        await (db.select(db.matchParticipantTable)
              ..where((p) => p.matchId.equals(matchId))
              ..orderBy([(p) => OrderingTerm.asc(p.createdAt)]))
            .get();
    return result.map((m) => m.playerId).toList();
  }

  Future<Map<String, bool>> getVisibilityForMatch(String matchId) async {
    final result = await (db.select(
      db.matchParticipantTable,
    )..where((p) => p.matchId.equals(matchId))).get();

    return {for (var x in result) x.playerId: x.isHidden};
  }

  Future<void> setParticipantVisibility(
    String matchId,
    String playerId,
    bool isHidden,
  ) async {
    final result =
        await (db.update(db.matchParticipantTable)..where(
              (p) => p.matchId.equals(matchId) & p.playerId.equals(playerId),
            ))
            .write(MatchParticipantTableCompanion(isHidden: Value(isHidden)));

    if (result == 0) {
      throw Exception("Error while updating usr visibility, no row changes");
    }
  }

  Future<Result<void>> removeAllParticipantsFromMatch(String matchId) async {
    try {
      await (db.delete(
        db.matchParticipantTable,
      )..where((p) => p.matchId.equals(matchId))).go();
    } catch (e) {
      return Result.error(
        Exception("Error while deleting match rounds for match $matchId"),
      );
    }
    return Result.ok(null);
  }
}
