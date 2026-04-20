// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TheMatch {

 String get matchId; String get title; String? get description; DateTime get startTime; DateTime? get endTime; MATCHSTATUS get status; String? get winner;
/// Create a copy of TheMatch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TheMatchCopyWith<TheMatch> get copyWith => _$TheMatchCopyWithImpl<TheMatch>(this as TheMatch, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TheMatch&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.winner, winner) || other.winner == winner));
}


@override
int get hashCode => Object.hash(runtimeType,matchId,title,description,startTime,endTime,status,winner);

@override
String toString() {
  return 'TheMatch(matchId: $matchId, title: $title, description: $description, startTime: $startTime, endTime: $endTime, status: $status, winner: $winner)';
}


}

/// @nodoc
abstract mixin class $TheMatchCopyWith<$Res>  {
  factory $TheMatchCopyWith(TheMatch value, $Res Function(TheMatch) _then) = _$TheMatchCopyWithImpl;
@useResult
$Res call({
 String matchId, String title, String? description, DateTime startTime, DateTime? endTime, MATCHSTATUS status, String? winner
});




}
/// @nodoc
class _$TheMatchCopyWithImpl<$Res>
    implements $TheMatchCopyWith<$Res> {
  _$TheMatchCopyWithImpl(this._self, this._then);

  final TheMatch _self;
  final $Res Function(TheMatch) _then;

/// Create a copy of TheMatch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? title = null,Object? description = freezed,Object? startTime = null,Object? endTime = freezed,Object? status = null,Object? winner = freezed,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MATCHSTATUS,winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TheMatch].
extension TheMatchPatterns on TheMatch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TheMatch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TheMatch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TheMatch value)  $default,){
final _that = this;
switch (_that) {
case _TheMatch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TheMatch value)?  $default,){
final _that = this;
switch (_that) {
case _TheMatch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String matchId,  String title,  String? description,  DateTime startTime,  DateTime? endTime,  MATCHSTATUS status,  String? winner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TheMatch() when $default != null:
return $default(_that.matchId,_that.title,_that.description,_that.startTime,_that.endTime,_that.status,_that.winner);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String matchId,  String title,  String? description,  DateTime startTime,  DateTime? endTime,  MATCHSTATUS status,  String? winner)  $default,) {final _that = this;
switch (_that) {
case _TheMatch():
return $default(_that.matchId,_that.title,_that.description,_that.startTime,_that.endTime,_that.status,_that.winner);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String matchId,  String title,  String? description,  DateTime startTime,  DateTime? endTime,  MATCHSTATUS status,  String? winner)?  $default,) {final _that = this;
switch (_that) {
case _TheMatch() when $default != null:
return $default(_that.matchId,_that.title,_that.description,_that.startTime,_that.endTime,_that.status,_that.winner);case _:
  return null;

}
}

}

/// @nodoc


class _TheMatch implements TheMatch {
  const _TheMatch({required this.matchId, required this.title, required this.description, required this.startTime, required this.endTime, required this.status, required this.winner});
  

@override final  String matchId;
@override final  String title;
@override final  String? description;
@override final  DateTime startTime;
@override final  DateTime? endTime;
@override final  MATCHSTATUS status;
@override final  String? winner;

/// Create a copy of TheMatch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TheMatchCopyWith<_TheMatch> get copyWith => __$TheMatchCopyWithImpl<_TheMatch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TheMatch&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.winner, winner) || other.winner == winner));
}


@override
int get hashCode => Object.hash(runtimeType,matchId,title,description,startTime,endTime,status,winner);

@override
String toString() {
  return 'TheMatch(matchId: $matchId, title: $title, description: $description, startTime: $startTime, endTime: $endTime, status: $status, winner: $winner)';
}


}

/// @nodoc
abstract mixin class _$TheMatchCopyWith<$Res> implements $TheMatchCopyWith<$Res> {
  factory _$TheMatchCopyWith(_TheMatch value, $Res Function(_TheMatch) _then) = __$TheMatchCopyWithImpl;
@override @useResult
$Res call({
 String matchId, String title, String? description, DateTime startTime, DateTime? endTime, MATCHSTATUS status, String? winner
});




}
/// @nodoc
class __$TheMatchCopyWithImpl<$Res>
    implements _$TheMatchCopyWith<$Res> {
  __$TheMatchCopyWithImpl(this._self, this._then);

  final _TheMatch _self;
  final $Res Function(_TheMatch) _then;

/// Create a copy of TheMatch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? title = null,Object? description = freezed,Object? startTime = null,Object? endTime = freezed,Object? status = null,Object? winner = freezed,}) {
  return _then(_TheMatch(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MATCHSTATUS,winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
