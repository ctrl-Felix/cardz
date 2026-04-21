// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $MatchTableTable extends MatchTable
    with TableInfo<$MatchTableTable, MatchTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MatchTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: () => const Uuid().v4(),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 32),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    clientDefault: () => DateTime.now(),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    description,
    status,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'match_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MatchTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  MatchTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MatchTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $MatchTableTable createAlias(String alias) {
    return $MatchTableTable(attachedDatabase, alias);
  }
}

class MatchTableData extends DataClass implements Insertable<MatchTableData> {
  final String id;
  final String title;
  final String? description;
  final String status;
  final DateTime createdAt;
  const MatchTableData({
    required this.id,
    required this.title,
    this.description,
    required this.status,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['status'] = Variable<String>(status);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  MatchTableCompanion toCompanion(bool nullToAbsent) {
    return MatchTableCompanion(
      id: Value(id),
      title: Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      status: Value(status),
      createdAt: Value(createdAt),
    );
  }

  factory MatchTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MatchTableData(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      status: serializer.fromJson<String>(json['status']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'status': serializer.toJson<String>(status),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  MatchTableData copyWith({
    String? id,
    String? title,
    Value<String?> description = const Value.absent(),
    String? status,
    DateTime? createdAt,
  }) => MatchTableData(
    id: id ?? this.id,
    title: title ?? this.title,
    description: description.present ? description.value : this.description,
    status: status ?? this.status,
    createdAt: createdAt ?? this.createdAt,
  );
  MatchTableData copyWithCompanion(MatchTableCompanion data) {
    return MatchTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      status: data.status.present ? data.status.value : this.status,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MatchTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, status, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MatchTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.status == this.status &&
          other.createdAt == this.createdAt);
}

class MatchTableCompanion extends UpdateCompanion<MatchTableData> {
  final Value<String> id;
  final Value<String> title;
  final Value<String?> description;
  final Value<String> status;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const MatchTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MatchTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.description = const Value.absent(),
    required String status,
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : title = Value(title),
       status = Value(status);
  static Insertable<MatchTableData> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? status,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MatchTableCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String?>? description,
    Value<String>? status,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return MatchTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MatchTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PlayerTableTable extends PlayerTable
    with TableInfo<$PlayerTableTable, PlayerTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlayerTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    clientDefault: () => const Uuid().v4(),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 32),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'player_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<PlayerTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  PlayerTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlayerTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
    );
  }

  @override
  $PlayerTableTable createAlias(String alias) {
    return $PlayerTableTable(attachedDatabase, alias);
  }
}

class PlayerTableData extends DataClass implements Insertable<PlayerTableData> {
  final String id;
  final String name;
  const PlayerTableData({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  PlayerTableCompanion toCompanion(bool nullToAbsent) {
    return PlayerTableCompanion(id: Value(id), name: Value(name));
  }

  factory PlayerTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlayerTableData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  PlayerTableData copyWith({String? id, String? name}) =>
      PlayerTableData(id: id ?? this.id, name: name ?? this.name);
  PlayerTableData copyWithCompanion(PlayerTableCompanion data) {
    return PlayerTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PlayerTableData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlayerTableData &&
          other.id == this.id &&
          other.name == this.name);
}

class PlayerTableCompanion extends UpdateCompanion<PlayerTableData> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const PlayerTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PlayerTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.rowid = const Value.absent(),
  }) : name = Value(name);
  static Insertable<PlayerTableData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PlayerTableCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<int>? rowid,
  }) {
    return PlayerTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlayerTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MatchParticipantTableTable extends MatchParticipantTable
    with TableInfo<$MatchParticipantTableTable, MatchParticipantTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MatchParticipantTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _matchIdMeta = const VerificationMeta(
    'matchId',
  );
  @override
  late final GeneratedColumn<String> matchId = GeneratedColumn<String>(
    'match_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _playerIdMeta = const VerificationMeta(
    'playerId',
  );
  @override
  late final GeneratedColumn<String> playerId = GeneratedColumn<String>(
    'player_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isHiddenMeta = const VerificationMeta(
    'isHidden',
  );
  @override
  late final GeneratedColumn<bool> isHidden = GeneratedColumn<bool>(
    'is_hidden',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_hidden" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    clientDefault: () => DateTime.now(),
  );
  @override
  List<GeneratedColumn> get $columns => [
    matchId,
    playerId,
    isHidden,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'match_participant_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MatchParticipantTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('match_id')) {
      context.handle(
        _matchIdMeta,
        matchId.isAcceptableOrUnknown(data['match_id']!, _matchIdMeta),
      );
    } else if (isInserting) {
      context.missing(_matchIdMeta);
    }
    if (data.containsKey('player_id')) {
      context.handle(
        _playerIdMeta,
        playerId.isAcceptableOrUnknown(data['player_id']!, _playerIdMeta),
      );
    } else if (isInserting) {
      context.missing(_playerIdMeta);
    }
    if (data.containsKey('is_hidden')) {
      context.handle(
        _isHiddenMeta,
        isHidden.isAcceptableOrUnknown(data['is_hidden']!, _isHiddenMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {matchId, playerId};
  @override
  MatchParticipantTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MatchParticipantTableData(
      matchId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}match_id'],
      )!,
      playerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}player_id'],
      )!,
      isHidden: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_hidden'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $MatchParticipantTableTable createAlias(String alias) {
    return $MatchParticipantTableTable(attachedDatabase, alias);
  }
}

class MatchParticipantTableData extends DataClass
    implements Insertable<MatchParticipantTableData> {
  final String matchId;
  final String playerId;
  final bool isHidden;
  final DateTime createdAt;
  const MatchParticipantTableData({
    required this.matchId,
    required this.playerId,
    required this.isHidden,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['match_id'] = Variable<String>(matchId);
    map['player_id'] = Variable<String>(playerId);
    map['is_hidden'] = Variable<bool>(isHidden);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  MatchParticipantTableCompanion toCompanion(bool nullToAbsent) {
    return MatchParticipantTableCompanion(
      matchId: Value(matchId),
      playerId: Value(playerId),
      isHidden: Value(isHidden),
      createdAt: Value(createdAt),
    );
  }

  factory MatchParticipantTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MatchParticipantTableData(
      matchId: serializer.fromJson<String>(json['matchId']),
      playerId: serializer.fromJson<String>(json['playerId']),
      isHidden: serializer.fromJson<bool>(json['isHidden']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'matchId': serializer.toJson<String>(matchId),
      'playerId': serializer.toJson<String>(playerId),
      'isHidden': serializer.toJson<bool>(isHidden),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  MatchParticipantTableData copyWith({
    String? matchId,
    String? playerId,
    bool? isHidden,
    DateTime? createdAt,
  }) => MatchParticipantTableData(
    matchId: matchId ?? this.matchId,
    playerId: playerId ?? this.playerId,
    isHidden: isHidden ?? this.isHidden,
    createdAt: createdAt ?? this.createdAt,
  );
  MatchParticipantTableData copyWithCompanion(
    MatchParticipantTableCompanion data,
  ) {
    return MatchParticipantTableData(
      matchId: data.matchId.present ? data.matchId.value : this.matchId,
      playerId: data.playerId.present ? data.playerId.value : this.playerId,
      isHidden: data.isHidden.present ? data.isHidden.value : this.isHidden,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MatchParticipantTableData(')
          ..write('matchId: $matchId, ')
          ..write('playerId: $playerId, ')
          ..write('isHidden: $isHidden, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(matchId, playerId, isHidden, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MatchParticipantTableData &&
          other.matchId == this.matchId &&
          other.playerId == this.playerId &&
          other.isHidden == this.isHidden &&
          other.createdAt == this.createdAt);
}

class MatchParticipantTableCompanion
    extends UpdateCompanion<MatchParticipantTableData> {
  final Value<String> matchId;
  final Value<String> playerId;
  final Value<bool> isHidden;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const MatchParticipantTableCompanion({
    this.matchId = const Value.absent(),
    this.playerId = const Value.absent(),
    this.isHidden = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MatchParticipantTableCompanion.insert({
    required String matchId,
    required String playerId,
    this.isHidden = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : matchId = Value(matchId),
       playerId = Value(playerId);
  static Insertable<MatchParticipantTableData> custom({
    Expression<String>? matchId,
    Expression<String>? playerId,
    Expression<bool>? isHidden,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (matchId != null) 'match_id': matchId,
      if (playerId != null) 'player_id': playerId,
      if (isHidden != null) 'is_hidden': isHidden,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MatchParticipantTableCompanion copyWith({
    Value<String>? matchId,
    Value<String>? playerId,
    Value<bool>? isHidden,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return MatchParticipantTableCompanion(
      matchId: matchId ?? this.matchId,
      playerId: playerId ?? this.playerId,
      isHidden: isHidden ?? this.isHidden,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (matchId.present) {
      map['match_id'] = Variable<String>(matchId.value);
    }
    if (playerId.present) {
      map['player_id'] = Variable<String>(playerId.value);
    }
    if (isHidden.present) {
      map['is_hidden'] = Variable<bool>(isHidden.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MatchParticipantTableCompanion(')
          ..write('matchId: $matchId, ')
          ..write('playerId: $playerId, ')
          ..write('isHidden: $isHidden, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MatchRoundTableTable extends MatchRoundTable
    with TableInfo<$MatchRoundTableTable, MatchRoundTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MatchRoundTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _matchIdMeta = const VerificationMeta(
    'matchId',
  );
  @override
  late final GeneratedColumn<String> matchId = GeneratedColumn<String>(
    'match_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _playerIdMeta = const VerificationMeta(
    'playerId',
  );
  @override
  late final GeneratedColumn<String> playerId = GeneratedColumn<String>(
    'player_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _roundIdMeta = const VerificationMeta(
    'roundId',
  );
  @override
  late final GeneratedColumn<int> roundId = GeneratedColumn<int>(
    'round_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<int> score = GeneratedColumn<int>(
    'score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    matchId,
    playerId,
    roundId,
    score,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'match_round_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<MatchRoundTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('match_id')) {
      context.handle(
        _matchIdMeta,
        matchId.isAcceptableOrUnknown(data['match_id']!, _matchIdMeta),
      );
    } else if (isInserting) {
      context.missing(_matchIdMeta);
    }
    if (data.containsKey('player_id')) {
      context.handle(
        _playerIdMeta,
        playerId.isAcceptableOrUnknown(data['player_id']!, _playerIdMeta),
      );
    } else if (isInserting) {
      context.missing(_playerIdMeta);
    }
    if (data.containsKey('round_id')) {
      context.handle(
        _roundIdMeta,
        roundId.isAcceptableOrUnknown(data['round_id']!, _roundIdMeta),
      );
    } else if (isInserting) {
      context.missing(_roundIdMeta);
    }
    if (data.containsKey('score')) {
      context.handle(
        _scoreMeta,
        score.isAcceptableOrUnknown(data['score']!, _scoreMeta),
      );
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {matchId, playerId, roundId};
  @override
  MatchRoundTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MatchRoundTableData(
      matchId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}match_id'],
      )!,
      playerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}player_id'],
      )!,
      roundId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}round_id'],
      )!,
      score: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}score'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      ),
    );
  }

  @override
  $MatchRoundTableTable createAlias(String alias) {
    return $MatchRoundTableTable(attachedDatabase, alias);
  }
}

class MatchRoundTableData extends DataClass
    implements Insertable<MatchRoundTableData> {
  final String matchId;
  final String playerId;
  final int roundId;
  final int score;
  final DateTime? createdAt;
  const MatchRoundTableData({
    required this.matchId,
    required this.playerId,
    required this.roundId,
    required this.score,
    this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['match_id'] = Variable<String>(matchId);
    map['player_id'] = Variable<String>(playerId);
    map['round_id'] = Variable<int>(roundId);
    map['score'] = Variable<int>(score);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  MatchRoundTableCompanion toCompanion(bool nullToAbsent) {
    return MatchRoundTableCompanion(
      matchId: Value(matchId),
      playerId: Value(playerId),
      roundId: Value(roundId),
      score: Value(score),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory MatchRoundTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MatchRoundTableData(
      matchId: serializer.fromJson<String>(json['matchId']),
      playerId: serializer.fromJson<String>(json['playerId']),
      roundId: serializer.fromJson<int>(json['roundId']),
      score: serializer.fromJson<int>(json['score']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'matchId': serializer.toJson<String>(matchId),
      'playerId': serializer.toJson<String>(playerId),
      'roundId': serializer.toJson<int>(roundId),
      'score': serializer.toJson<int>(score),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  MatchRoundTableData copyWith({
    String? matchId,
    String? playerId,
    int? roundId,
    int? score,
    Value<DateTime?> createdAt = const Value.absent(),
  }) => MatchRoundTableData(
    matchId: matchId ?? this.matchId,
    playerId: playerId ?? this.playerId,
    roundId: roundId ?? this.roundId,
    score: score ?? this.score,
    createdAt: createdAt.present ? createdAt.value : this.createdAt,
  );
  MatchRoundTableData copyWithCompanion(MatchRoundTableCompanion data) {
    return MatchRoundTableData(
      matchId: data.matchId.present ? data.matchId.value : this.matchId,
      playerId: data.playerId.present ? data.playerId.value : this.playerId,
      roundId: data.roundId.present ? data.roundId.value : this.roundId,
      score: data.score.present ? data.score.value : this.score,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MatchRoundTableData(')
          ..write('matchId: $matchId, ')
          ..write('playerId: $playerId, ')
          ..write('roundId: $roundId, ')
          ..write('score: $score, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(matchId, playerId, roundId, score, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MatchRoundTableData &&
          other.matchId == this.matchId &&
          other.playerId == this.playerId &&
          other.roundId == this.roundId &&
          other.score == this.score &&
          other.createdAt == this.createdAt);
}

class MatchRoundTableCompanion extends UpdateCompanion<MatchRoundTableData> {
  final Value<String> matchId;
  final Value<String> playerId;
  final Value<int> roundId;
  final Value<int> score;
  final Value<DateTime?> createdAt;
  final Value<int> rowid;
  const MatchRoundTableCompanion({
    this.matchId = const Value.absent(),
    this.playerId = const Value.absent(),
    this.roundId = const Value.absent(),
    this.score = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MatchRoundTableCompanion.insert({
    required String matchId,
    required String playerId,
    required int roundId,
    required int score,
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : matchId = Value(matchId),
       playerId = Value(playerId),
       roundId = Value(roundId),
       score = Value(score);
  static Insertable<MatchRoundTableData> custom({
    Expression<String>? matchId,
    Expression<String>? playerId,
    Expression<int>? roundId,
    Expression<int>? score,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (matchId != null) 'match_id': matchId,
      if (playerId != null) 'player_id': playerId,
      if (roundId != null) 'round_id': roundId,
      if (score != null) 'score': score,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MatchRoundTableCompanion copyWith({
    Value<String>? matchId,
    Value<String>? playerId,
    Value<int>? roundId,
    Value<int>? score,
    Value<DateTime?>? createdAt,
    Value<int>? rowid,
  }) {
    return MatchRoundTableCompanion(
      matchId: matchId ?? this.matchId,
      playerId: playerId ?? this.playerId,
      roundId: roundId ?? this.roundId,
      score: score ?? this.score,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (matchId.present) {
      map['match_id'] = Variable<String>(matchId.value);
    }
    if (playerId.present) {
      map['player_id'] = Variable<String>(playerId.value);
    }
    if (roundId.present) {
      map['round_id'] = Variable<int>(roundId.value);
    }
    if (score.present) {
      map['score'] = Variable<int>(score.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MatchRoundTableCompanion(')
          ..write('matchId: $matchId, ')
          ..write('playerId: $playerId, ')
          ..write('roundId: $roundId, ')
          ..write('score: $score, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MatchTableTable matchTable = $MatchTableTable(this);
  late final $PlayerTableTable playerTable = $PlayerTableTable(this);
  late final $MatchParticipantTableTable matchParticipantTable =
      $MatchParticipantTableTable(this);
  late final $MatchRoundTableTable matchRoundTable = $MatchRoundTableTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    matchTable,
    playerTable,
    matchParticipantTable,
    matchRoundTable,
  ];
}

typedef $$MatchTableTableCreateCompanionBuilder =
    MatchTableCompanion Function({
      Value<String> id,
      required String title,
      Value<String?> description,
      required String status,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$MatchTableTableUpdateCompanionBuilder =
    MatchTableCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String?> description,
      Value<String> status,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$MatchTableTableFilterComposer
    extends Composer<_$AppDatabase, $MatchTableTable> {
  $$MatchTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MatchTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MatchTableTable> {
  $$MatchTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MatchTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MatchTableTable> {
  $$MatchTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$MatchTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MatchTableTable,
          MatchTableData,
          $$MatchTableTableFilterComposer,
          $$MatchTableTableOrderingComposer,
          $$MatchTableTableAnnotationComposer,
          $$MatchTableTableCreateCompanionBuilder,
          $$MatchTableTableUpdateCompanionBuilder,
          (
            MatchTableData,
            BaseReferences<_$AppDatabase, $MatchTableTable, MatchTableData>,
          ),
          MatchTableData,
          PrefetchHooks Function()
        > {
  $$MatchTableTableTableManager(_$AppDatabase db, $MatchTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MatchTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MatchTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MatchTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MatchTableCompanion(
                id: id,
                title: title,
                description: description,
                status: status,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                required String title,
                Value<String?> description = const Value.absent(),
                required String status,
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MatchTableCompanion.insert(
                id: id,
                title: title,
                description: description,
                status: status,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MatchTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MatchTableTable,
      MatchTableData,
      $$MatchTableTableFilterComposer,
      $$MatchTableTableOrderingComposer,
      $$MatchTableTableAnnotationComposer,
      $$MatchTableTableCreateCompanionBuilder,
      $$MatchTableTableUpdateCompanionBuilder,
      (
        MatchTableData,
        BaseReferences<_$AppDatabase, $MatchTableTable, MatchTableData>,
      ),
      MatchTableData,
      PrefetchHooks Function()
    >;
typedef $$PlayerTableTableCreateCompanionBuilder =
    PlayerTableCompanion Function({
      Value<String> id,
      required String name,
      Value<int> rowid,
    });
typedef $$PlayerTableTableUpdateCompanionBuilder =
    PlayerTableCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<int> rowid,
    });

class $$PlayerTableTableFilterComposer
    extends Composer<_$AppDatabase, $PlayerTableTable> {
  $$PlayerTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PlayerTableTableOrderingComposer
    extends Composer<_$AppDatabase, $PlayerTableTable> {
  $$PlayerTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PlayerTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $PlayerTableTable> {
  $$PlayerTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);
}

class $$PlayerTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PlayerTableTable,
          PlayerTableData,
          $$PlayerTableTableFilterComposer,
          $$PlayerTableTableOrderingComposer,
          $$PlayerTableTableAnnotationComposer,
          $$PlayerTableTableCreateCompanionBuilder,
          $$PlayerTableTableUpdateCompanionBuilder,
          (
            PlayerTableData,
            BaseReferences<_$AppDatabase, $PlayerTableTable, PlayerTableData>,
          ),
          PlayerTableData,
          PrefetchHooks Function()
        > {
  $$PlayerTableTableTableManager(_$AppDatabase db, $PlayerTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PlayerTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PlayerTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PlayerTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PlayerTableCompanion(id: id, name: name, rowid: rowid),
          createCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                required String name,
                Value<int> rowid = const Value.absent(),
              }) =>
                  PlayerTableCompanion.insert(id: id, name: name, rowid: rowid),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PlayerTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PlayerTableTable,
      PlayerTableData,
      $$PlayerTableTableFilterComposer,
      $$PlayerTableTableOrderingComposer,
      $$PlayerTableTableAnnotationComposer,
      $$PlayerTableTableCreateCompanionBuilder,
      $$PlayerTableTableUpdateCompanionBuilder,
      (
        PlayerTableData,
        BaseReferences<_$AppDatabase, $PlayerTableTable, PlayerTableData>,
      ),
      PlayerTableData,
      PrefetchHooks Function()
    >;
typedef $$MatchParticipantTableTableCreateCompanionBuilder =
    MatchParticipantTableCompanion Function({
      required String matchId,
      required String playerId,
      Value<bool> isHidden,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$MatchParticipantTableTableUpdateCompanionBuilder =
    MatchParticipantTableCompanion Function({
      Value<String> matchId,
      Value<String> playerId,
      Value<bool> isHidden,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$MatchParticipantTableTableFilterComposer
    extends Composer<_$AppDatabase, $MatchParticipantTableTable> {
  $$MatchParticipantTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get matchId => $composableBuilder(
    column: $table.matchId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get playerId => $composableBuilder(
    column: $table.playerId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MatchParticipantTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MatchParticipantTableTable> {
  $$MatchParticipantTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get matchId => $composableBuilder(
    column: $table.matchId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get playerId => $composableBuilder(
    column: $table.playerId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MatchParticipantTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MatchParticipantTableTable> {
  $$MatchParticipantTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get matchId =>
      $composableBuilder(column: $table.matchId, builder: (column) => column);

  GeneratedColumn<String> get playerId =>
      $composableBuilder(column: $table.playerId, builder: (column) => column);

  GeneratedColumn<bool> get isHidden =>
      $composableBuilder(column: $table.isHidden, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$MatchParticipantTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MatchParticipantTableTable,
          MatchParticipantTableData,
          $$MatchParticipantTableTableFilterComposer,
          $$MatchParticipantTableTableOrderingComposer,
          $$MatchParticipantTableTableAnnotationComposer,
          $$MatchParticipantTableTableCreateCompanionBuilder,
          $$MatchParticipantTableTableUpdateCompanionBuilder,
          (
            MatchParticipantTableData,
            BaseReferences<
              _$AppDatabase,
              $MatchParticipantTableTable,
              MatchParticipantTableData
            >,
          ),
          MatchParticipantTableData,
          PrefetchHooks Function()
        > {
  $$MatchParticipantTableTableTableManager(
    _$AppDatabase db,
    $MatchParticipantTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MatchParticipantTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$MatchParticipantTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$MatchParticipantTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> matchId = const Value.absent(),
                Value<String> playerId = const Value.absent(),
                Value<bool> isHidden = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MatchParticipantTableCompanion(
                matchId: matchId,
                playerId: playerId,
                isHidden: isHidden,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String matchId,
                required String playerId,
                Value<bool> isHidden = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MatchParticipantTableCompanion.insert(
                matchId: matchId,
                playerId: playerId,
                isHidden: isHidden,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MatchParticipantTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MatchParticipantTableTable,
      MatchParticipantTableData,
      $$MatchParticipantTableTableFilterComposer,
      $$MatchParticipantTableTableOrderingComposer,
      $$MatchParticipantTableTableAnnotationComposer,
      $$MatchParticipantTableTableCreateCompanionBuilder,
      $$MatchParticipantTableTableUpdateCompanionBuilder,
      (
        MatchParticipantTableData,
        BaseReferences<
          _$AppDatabase,
          $MatchParticipantTableTable,
          MatchParticipantTableData
        >,
      ),
      MatchParticipantTableData,
      PrefetchHooks Function()
    >;
typedef $$MatchRoundTableTableCreateCompanionBuilder =
    MatchRoundTableCompanion Function({
      required String matchId,
      required String playerId,
      required int roundId,
      required int score,
      Value<DateTime?> createdAt,
      Value<int> rowid,
    });
typedef $$MatchRoundTableTableUpdateCompanionBuilder =
    MatchRoundTableCompanion Function({
      Value<String> matchId,
      Value<String> playerId,
      Value<int> roundId,
      Value<int> score,
      Value<DateTime?> createdAt,
      Value<int> rowid,
    });

class $$MatchRoundTableTableFilterComposer
    extends Composer<_$AppDatabase, $MatchRoundTableTable> {
  $$MatchRoundTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get matchId => $composableBuilder(
    column: $table.matchId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get playerId => $composableBuilder(
    column: $table.playerId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get roundId => $composableBuilder(
    column: $table.roundId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MatchRoundTableTableOrderingComposer
    extends Composer<_$AppDatabase, $MatchRoundTableTable> {
  $$MatchRoundTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get matchId => $composableBuilder(
    column: $table.matchId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get playerId => $composableBuilder(
    column: $table.playerId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get roundId => $composableBuilder(
    column: $table.roundId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MatchRoundTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $MatchRoundTableTable> {
  $$MatchRoundTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get matchId =>
      $composableBuilder(column: $table.matchId, builder: (column) => column);

  GeneratedColumn<String> get playerId =>
      $composableBuilder(column: $table.playerId, builder: (column) => column);

  GeneratedColumn<int> get roundId =>
      $composableBuilder(column: $table.roundId, builder: (column) => column);

  GeneratedColumn<int> get score =>
      $composableBuilder(column: $table.score, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$MatchRoundTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MatchRoundTableTable,
          MatchRoundTableData,
          $$MatchRoundTableTableFilterComposer,
          $$MatchRoundTableTableOrderingComposer,
          $$MatchRoundTableTableAnnotationComposer,
          $$MatchRoundTableTableCreateCompanionBuilder,
          $$MatchRoundTableTableUpdateCompanionBuilder,
          (
            MatchRoundTableData,
            BaseReferences<
              _$AppDatabase,
              $MatchRoundTableTable,
              MatchRoundTableData
            >,
          ),
          MatchRoundTableData,
          PrefetchHooks Function()
        > {
  $$MatchRoundTableTableTableManager(
    _$AppDatabase db,
    $MatchRoundTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MatchRoundTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MatchRoundTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MatchRoundTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> matchId = const Value.absent(),
                Value<String> playerId = const Value.absent(),
                Value<int> roundId = const Value.absent(),
                Value<int> score = const Value.absent(),
                Value<DateTime?> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MatchRoundTableCompanion(
                matchId: matchId,
                playerId: playerId,
                roundId: roundId,
                score: score,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String matchId,
                required String playerId,
                required int roundId,
                required int score,
                Value<DateTime?> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MatchRoundTableCompanion.insert(
                matchId: matchId,
                playerId: playerId,
                roundId: roundId,
                score: score,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MatchRoundTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MatchRoundTableTable,
      MatchRoundTableData,
      $$MatchRoundTableTableFilterComposer,
      $$MatchRoundTableTableOrderingComposer,
      $$MatchRoundTableTableAnnotationComposer,
      $$MatchRoundTableTableCreateCompanionBuilder,
      $$MatchRoundTableTableUpdateCompanionBuilder,
      (
        MatchRoundTableData,
        BaseReferences<
          _$AppDatabase,
          $MatchRoundTableTable,
          MatchRoundTableData
        >,
      ),
      MatchRoundTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MatchTableTableTableManager get matchTable =>
      $$MatchTableTableTableManager(_db, _db.matchTable);
  $$PlayerTableTableTableManager get playerTable =>
      $$PlayerTableTableTableManager(_db, _db.playerTable);
  $$MatchParticipantTableTableTableManager get matchParticipantTable =>
      $$MatchParticipantTableTableTableManager(_db, _db.matchParticipantTable);
  $$MatchRoundTableTableTableManager get matchRoundTable =>
      $$MatchRoundTableTableTableManager(_db, _db.matchRoundTable);
}
