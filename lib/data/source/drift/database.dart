import 'package:doublehead/data/source/drift/tables/match.dart';
import 'package:doublehead/data/source/drift/tables/match_participant.dart';
import 'package:doublehead/data/source/drift/tables/match_round.dart';
import 'package:doublehead/data/source/drift/tables/player.dart';
import 'package:drift_dev/api/migrations_native.dart';
import 'package:drift/drift.dart';
import 'package:drift/internal/versioned_schema.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import 'database.steps.dart';

part 'database.g.dart';

const kDebugMode = true;

@DriftDatabase(
  tables: [MatchTable, PlayerTable, MatchParticipantTable, MatchRoundTable],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'doublehead',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onUpgrade: (m, from, to) async {
        // Following the advice from https://drift.simonbinder.eu/Migrations/api/#general-tips
        await customStatement('PRAGMA foreign_keys = OFF');

        await transaction(
          () => VersionedSchema.runMigrationSteps(
            migrator: m,
            from: from,
            to: to,
            steps: _upgrade,
          ),
        );

        if (kDebugMode) {
          final wrongForeignKeys = await customSelect(
            'PRAGMA foreign_key_check',
          ).get();
          assert(
            wrongForeignKeys.isEmpty,
            '${wrongForeignKeys.map((e) => e.data)}',
          );
        }

        await customStatement('PRAGMA foreign_keys = ON');
      },
      beforeOpen: (details) async {
        await validateDatabaseSchema();
      },
    );
  }

  static final _upgrade = migrationSteps(from1To2: (m, schema) async {});
}
