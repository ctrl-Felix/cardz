// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_round.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchRound {

 String get matchId; String get playerId; int get roundId; int get score; DateTime? get createdAt;
/// Create a copy of MatchRound
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchRoundCopyWith<MatchRound> get copyWith => _$MatchRoundCopyWithImpl<MatchRound>(this as MatchRound, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchRound&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.playerId, playerId) || other.playerId == playerId)&&(identical(other.roundId, roundId) || other.roundId == roundId)&&(identical(other.score, score) || other.score == score)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,matchId,playerId,roundId,score,createdAt);

@override
String toString() {
  return 'MatchRound(matchId: $matchId, playerId: $playerId, roundId: $roundId, score: $score, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MatchRoundCopyWith<$Res>  {
  factory $MatchRoundCopyWith(MatchRound value, $Res Function(MatchRound) _then) = _$MatchRoundCopyWithImpl;
@useResult
$Res call({
 String matchId, String playerId, int roundId, int score, DateTime? createdAt
});




}
/// @nodoc
class _$MatchRoundCopyWithImpl<$Res>
    implements $MatchRoundCopyWith<$Res> {
  _$MatchRoundCopyWithImpl(this._self, this._then);

  final MatchRound _self;
  final $Res Function(MatchRound) _then;

/// Create a copy of MatchRound
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? playerId = null,Object? roundId = null,Object? score = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,playerId: null == playerId ? _self.playerId : playerId // ignore: cast_nullable_to_non_nullable
as String,roundId: null == roundId ? _self.roundId : roundId // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchRound].
extension MatchRoundPatterns on MatchRound {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchRound value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchRound() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchRound value)  $default,){
final _that = this;
switch (_that) {
case _MatchRound():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchRound value)?  $default,){
final _that = this;
switch (_that) {
case _MatchRound() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String matchId,  String playerId,  int roundId,  int score,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchRound() when $default != null:
return $default(_that.matchId,_that.playerId,_that.roundId,_that.score,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String matchId,  String playerId,  int roundId,  int score,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _MatchRound():
return $default(_that.matchId,_that.playerId,_that.roundId,_that.score,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String matchId,  String playerId,  int roundId,  int score,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MatchRound() when $default != null:
return $default(_that.matchId,_that.playerId,_that.roundId,_that.score,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _MatchRound implements MatchRound {
  const _MatchRound({required this.matchId, required this.playerId, required this.roundId, required this.score, required this.createdAt});
  

@override final  String matchId;
@override final  String playerId;
@override final  int roundId;
@override final  int score;
@override final  DateTime? createdAt;

/// Create a copy of MatchRound
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchRoundCopyWith<_MatchRound> get copyWith => __$MatchRoundCopyWithImpl<_MatchRound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchRound&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.playerId, playerId) || other.playerId == playerId)&&(identical(other.roundId, roundId) || other.roundId == roundId)&&(identical(other.score, score) || other.score == score)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,matchId,playerId,roundId,score,createdAt);

@override
String toString() {
  return 'MatchRound(matchId: $matchId, playerId: $playerId, roundId: $roundId, score: $score, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MatchRoundCopyWith<$Res> implements $MatchRoundCopyWith<$Res> {
  factory _$MatchRoundCopyWith(_MatchRound value, $Res Function(_MatchRound) _then) = __$MatchRoundCopyWithImpl;
@override @useResult
$Res call({
 String matchId, String playerId, int roundId, int score, DateTime? createdAt
});




}
/// @nodoc
class __$MatchRoundCopyWithImpl<$Res>
    implements _$MatchRoundCopyWith<$Res> {
  __$MatchRoundCopyWithImpl(this._self, this._then);

  final _MatchRound _self;
  final $Res Function(_MatchRound) _then;

/// Create a copy of MatchRound
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? playerId = null,Object? roundId = null,Object? score = null,Object? createdAt = freezed,}) {
  return _then(_MatchRound(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,playerId: null == playerId ? _self.playerId : playerId // ignore: cast_nullable_to_non_nullable
as String,roundId: null == roundId ? _self.roundId : roundId // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
