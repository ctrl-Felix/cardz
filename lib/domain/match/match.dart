import 'package:cardcrew/data/source/drift/database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match.freezed.dart';

enum MATCHSTATUS { ONGOING, FINISHED }

// As Match is already used in Dart/Flutter somewhere
@freezed
abstract class TheMatch with _$TheMatch {
  const factory TheMatch({
    required String matchId,
    required String title,
    required String? description,
    required DateTime startTime,
    required DateTime? endTime,
    required MATCHSTATUS status,
    required String? winner,
  }) = _TheMatch;
}

extension MatchTableConverter on MatchTableData {
  TheMatch toTheMatch() {
    final MATCHSTATUS parsedStatus = MATCHSTATUS.values.firstWhere(
      (e) => e.toString() == status,
    );
    return TheMatch(
      matchId: id,
      title: title,
      description: description,
      startTime: createdAt,
      endTime: null,
      status: parsedStatus,
      winner: null,
    );
  }
}
