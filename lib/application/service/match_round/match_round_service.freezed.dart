// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_round_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeadboardEntry {

 Player get player; int get score; bool get isShared; int get rank;
/// Create a copy of LeadboardEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeadboardEntryCopyWith<LeadboardEntry> get copyWith => _$LeadboardEntryCopyWithImpl<LeadboardEntry>(this as LeadboardEntry, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeadboardEntry&&(identical(other.player, player) || other.player == player)&&(identical(other.score, score) || other.score == score)&&(identical(other.isShared, isShared) || other.isShared == isShared)&&(identical(other.rank, rank) || other.rank == rank));
}


@override
int get hashCode => Object.hash(runtimeType,player,score,isShared,rank);

@override
String toString() {
  return 'LeadboardEntry(player: $player, score: $score, isShared: $isShared, rank: $rank)';
}


}

/// @nodoc
abstract mixin class $LeadboardEntryCopyWith<$Res>  {
  factory $LeadboardEntryCopyWith(LeadboardEntry value, $Res Function(LeadboardEntry) _then) = _$LeadboardEntryCopyWithImpl;
@useResult
$Res call({
 Player player, int score, bool isShared, int rank
});


$PlayerCopyWith<$Res> get player;

}
/// @nodoc
class _$LeadboardEntryCopyWithImpl<$Res>
    implements $LeadboardEntryCopyWith<$Res> {
  _$LeadboardEntryCopyWithImpl(this._self, this._then);

  final LeadboardEntry _self;
  final $Res Function(LeadboardEntry) _then;

/// Create a copy of LeadboardEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? player = null,Object? score = null,Object? isShared = null,Object? rank = null,}) {
  return _then(_self.copyWith(
player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Player,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,isShared: null == isShared ? _self.isShared : isShared // ignore: cast_nullable_to_non_nullable
as bool,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of LeadboardEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCopyWith<$Res> get player {
  
  return $PlayerCopyWith<$Res>(_self.player, (value) {
    return _then(_self.copyWith(player: value));
  });
}
}


/// Adds pattern-matching-related methods to [LeadboardEntry].
extension LeadboardEntryPatterns on LeadboardEntry {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeadboardEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeadboardEntry() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeadboardEntry value)  $default,){
final _that = this;
switch (_that) {
case _LeadboardEntry():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeadboardEntry value)?  $default,){
final _that = this;
switch (_that) {
case _LeadboardEntry() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Player player,  int score,  bool isShared,  int rank)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeadboardEntry() when $default != null:
return $default(_that.player,_that.score,_that.isShared,_that.rank);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Player player,  int score,  bool isShared,  int rank)  $default,) {final _that = this;
switch (_that) {
case _LeadboardEntry():
return $default(_that.player,_that.score,_that.isShared,_that.rank);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Player player,  int score,  bool isShared,  int rank)?  $default,) {final _that = this;
switch (_that) {
case _LeadboardEntry() when $default != null:
return $default(_that.player,_that.score,_that.isShared,_that.rank);case _:
  return null;

}
}

}

/// @nodoc


class _LeadboardEntry implements LeadboardEntry {
  const _LeadboardEntry({required this.player, required this.score, required this.isShared, required this.rank});
  

@override final  Player player;
@override final  int score;
@override final  bool isShared;
@override final  int rank;

/// Create a copy of LeadboardEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeadboardEntryCopyWith<_LeadboardEntry> get copyWith => __$LeadboardEntryCopyWithImpl<_LeadboardEntry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeadboardEntry&&(identical(other.player, player) || other.player == player)&&(identical(other.score, score) || other.score == score)&&(identical(other.isShared, isShared) || other.isShared == isShared)&&(identical(other.rank, rank) || other.rank == rank));
}


@override
int get hashCode => Object.hash(runtimeType,player,score,isShared,rank);

@override
String toString() {
  return 'LeadboardEntry(player: $player, score: $score, isShared: $isShared, rank: $rank)';
}


}

/// @nodoc
abstract mixin class _$LeadboardEntryCopyWith<$Res> implements $LeadboardEntryCopyWith<$Res> {
  factory _$LeadboardEntryCopyWith(_LeadboardEntry value, $Res Function(_LeadboardEntry) _then) = __$LeadboardEntryCopyWithImpl;
@override @useResult
$Res call({
 Player player, int score, bool isShared, int rank
});


@override $PlayerCopyWith<$Res> get player;

}
/// @nodoc
class __$LeadboardEntryCopyWithImpl<$Res>
    implements _$LeadboardEntryCopyWith<$Res> {
  __$LeadboardEntryCopyWithImpl(this._self, this._then);

  final _LeadboardEntry _self;
  final $Res Function(_LeadboardEntry) _then;

/// Create a copy of LeadboardEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? player = null,Object? score = null,Object? isShared = null,Object? rank = null,}) {
  return _then(_LeadboardEntry(
player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Player,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,isShared: null == isShared ? _self.isShared : isShared // ignore: cast_nullable_to_non_nullable
as bool,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of LeadboardEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCopyWith<$Res> get player {
  
  return $PlayerCopyWith<$Res>(_self.player, (value) {
    return _then(_self.copyWith(player: value));
  });
}
}

/// @nodoc
mixin _$MatchRoundServiceState {

 String get matchId; List<MatchRound> get rounds; List<Player> get participants; List<LeadboardEntry> get leaderboard; TheMatch? get match; bool get isLoading; String? get errorMessage;
/// Create a copy of MatchRoundServiceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchRoundServiceStateCopyWith<MatchRoundServiceState> get copyWith => _$MatchRoundServiceStateCopyWithImpl<MatchRoundServiceState>(this as MatchRoundServiceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchRoundServiceState&&(identical(other.matchId, matchId) || other.matchId == matchId)&&const DeepCollectionEquality().equals(other.rounds, rounds)&&const DeepCollectionEquality().equals(other.participants, participants)&&const DeepCollectionEquality().equals(other.leaderboard, leaderboard)&&(identical(other.match, match) || other.match == match)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,matchId,const DeepCollectionEquality().hash(rounds),const DeepCollectionEquality().hash(participants),const DeepCollectionEquality().hash(leaderboard),match,isLoading,errorMessage);

@override
String toString() {
  return 'MatchRoundServiceState(matchId: $matchId, rounds: $rounds, participants: $participants, leaderboard: $leaderboard, match: $match, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MatchRoundServiceStateCopyWith<$Res>  {
  factory $MatchRoundServiceStateCopyWith(MatchRoundServiceState value, $Res Function(MatchRoundServiceState) _then) = _$MatchRoundServiceStateCopyWithImpl;
@useResult
$Res call({
 String matchId, List<MatchRound> rounds, List<Player> participants, List<LeadboardEntry> leaderboard, TheMatch? match, bool isLoading, String? errorMessage
});


$TheMatchCopyWith<$Res>? get match;

}
/// @nodoc
class _$MatchRoundServiceStateCopyWithImpl<$Res>
    implements $MatchRoundServiceStateCopyWith<$Res> {
  _$MatchRoundServiceStateCopyWithImpl(this._self, this._then);

  final MatchRoundServiceState _self;
  final $Res Function(MatchRoundServiceState) _then;

/// Create a copy of MatchRoundServiceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? rounds = null,Object? participants = null,Object? leaderboard = null,Object? match = freezed,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,rounds: null == rounds ? _self.rounds : rounds // ignore: cast_nullable_to_non_nullable
as List<MatchRound>,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<Player>,leaderboard: null == leaderboard ? _self.leaderboard : leaderboard // ignore: cast_nullable_to_non_nullable
as List<LeadboardEntry>,match: freezed == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as TheMatch?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MatchRoundServiceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TheMatchCopyWith<$Res>? get match {
    if (_self.match == null) {
    return null;
  }

  return $TheMatchCopyWith<$Res>(_self.match!, (value) {
    return _then(_self.copyWith(match: value));
  });
}
}


/// Adds pattern-matching-related methods to [MatchRoundServiceState].
extension MatchRoundServiceStatePatterns on MatchRoundServiceState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchRoundServiceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchRoundServiceState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchRoundServiceState value)  $default,){
final _that = this;
switch (_that) {
case _MatchRoundServiceState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchRoundServiceState value)?  $default,){
final _that = this;
switch (_that) {
case _MatchRoundServiceState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String matchId,  List<MatchRound> rounds,  List<Player> participants,  List<LeadboardEntry> leaderboard,  TheMatch? match,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchRoundServiceState() when $default != null:
return $default(_that.matchId,_that.rounds,_that.participants,_that.leaderboard,_that.match,_that.isLoading,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String matchId,  List<MatchRound> rounds,  List<Player> participants,  List<LeadboardEntry> leaderboard,  TheMatch? match,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _MatchRoundServiceState():
return $default(_that.matchId,_that.rounds,_that.participants,_that.leaderboard,_that.match,_that.isLoading,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String matchId,  List<MatchRound> rounds,  List<Player> participants,  List<LeadboardEntry> leaderboard,  TheMatch? match,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _MatchRoundServiceState() when $default != null:
return $default(_that.matchId,_that.rounds,_that.participants,_that.leaderboard,_that.match,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MatchRoundServiceState implements MatchRoundServiceState {
  const _MatchRoundServiceState({required this.matchId, final  List<MatchRound> rounds = const [], final  List<Player> participants = const [], final  List<LeadboardEntry> leaderboard = const [], this.match = null, this.isLoading = false, this.errorMessage = null}): _rounds = rounds,_participants = participants,_leaderboard = leaderboard;
  

@override final  String matchId;
 final  List<MatchRound> _rounds;
@override@JsonKey() List<MatchRound> get rounds {
  if (_rounds is EqualUnmodifiableListView) return _rounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rounds);
}

 final  List<Player> _participants;
@override@JsonKey() List<Player> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}

 final  List<LeadboardEntry> _leaderboard;
@override@JsonKey() List<LeadboardEntry> get leaderboard {
  if (_leaderboard is EqualUnmodifiableListView) return _leaderboard;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_leaderboard);
}

@override@JsonKey() final  TheMatch? match;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String? errorMessage;

/// Create a copy of MatchRoundServiceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchRoundServiceStateCopyWith<_MatchRoundServiceState> get copyWith => __$MatchRoundServiceStateCopyWithImpl<_MatchRoundServiceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchRoundServiceState&&(identical(other.matchId, matchId) || other.matchId == matchId)&&const DeepCollectionEquality().equals(other._rounds, _rounds)&&const DeepCollectionEquality().equals(other._participants, _participants)&&const DeepCollectionEquality().equals(other._leaderboard, _leaderboard)&&(identical(other.match, match) || other.match == match)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,matchId,const DeepCollectionEquality().hash(_rounds),const DeepCollectionEquality().hash(_participants),const DeepCollectionEquality().hash(_leaderboard),match,isLoading,errorMessage);

@override
String toString() {
  return 'MatchRoundServiceState(matchId: $matchId, rounds: $rounds, participants: $participants, leaderboard: $leaderboard, match: $match, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MatchRoundServiceStateCopyWith<$Res> implements $MatchRoundServiceStateCopyWith<$Res> {
  factory _$MatchRoundServiceStateCopyWith(_MatchRoundServiceState value, $Res Function(_MatchRoundServiceState) _then) = __$MatchRoundServiceStateCopyWithImpl;
@override @useResult
$Res call({
 String matchId, List<MatchRound> rounds, List<Player> participants, List<LeadboardEntry> leaderboard, TheMatch? match, bool isLoading, String? errorMessage
});


@override $TheMatchCopyWith<$Res>? get match;

}
/// @nodoc
class __$MatchRoundServiceStateCopyWithImpl<$Res>
    implements _$MatchRoundServiceStateCopyWith<$Res> {
  __$MatchRoundServiceStateCopyWithImpl(this._self, this._then);

  final _MatchRoundServiceState _self;
  final $Res Function(_MatchRoundServiceState) _then;

/// Create a copy of MatchRoundServiceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? rounds = null,Object? participants = null,Object? leaderboard = null,Object? match = freezed,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_MatchRoundServiceState(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,rounds: null == rounds ? _self._rounds : rounds // ignore: cast_nullable_to_non_nullable
as List<MatchRound>,participants: null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<Player>,leaderboard: null == leaderboard ? _self._leaderboard : leaderboard // ignore: cast_nullable_to_non_nullable
as List<LeadboardEntry>,match: freezed == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as TheMatch?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MatchRoundServiceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TheMatchCopyWith<$Res>? get match {
    if (_self.match == null) {
    return null;
  }

  return $TheMatchCopyWith<$Res>(_self.match!, (value) {
    return _then(_self.copyWith(match: value));
  });
}
}

// dart format on
