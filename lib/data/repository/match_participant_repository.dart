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
    final result = await (db.select(
      db.matchParticipantTable,
    )..where((p) => p.matchId.equals(matchId))).get();

    return result.map((m) => m.playerId).toList();
  }
}
