import 'package:doublehead/data/repository/match_repository/match_repository.dart';
import 'package:doublehead/data/source/drift/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repository/player_repository/player_repository.dart';

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
