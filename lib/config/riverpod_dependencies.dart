import 'package:cardcrew/data/repository/match_participant_repository.dart';
import 'package:cardcrew/data/repository/match_round_repository.dart';
import 'package:cardcrew/data/source/drift/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repository/match_repository.dart';
import '../data/repository/player_repository.dart';

part 'riverpod_dependencies.g.dart';

// Database
@Riverpod(keepAlive: true)
AppDatabase database(Ref ref) {
  return AppDatabase();
}

// Repositories
@riverpod
MatchRepository matchRepository(Ref ref) {
  final db = ref.read(databaseProvider);
  return MatchRepository(db: db);
}

@riverpod
PlayerRepository playerRepository(Ref ref) {
  final db = ref.read(databaseProvider);
  return PlayerRepository(db: db);
}

@riverpod
MatchParticipantRepository matchParticipantRepository(Ref ref) {
  final db = ref.read(databaseProvider);
  return MatchParticipantRepository(db: db);
}

@riverpod
MatchRoundRepository matchRoundRepository(Ref ref) {
  final db = ref.read(databaseProvider);
  return MatchRoundRepository(db: db);
}
