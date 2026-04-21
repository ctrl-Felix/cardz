// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchControllerState {

 String get matchId; bool get isLoading; String? get errorMessage; List<Player> get participants;
/// Create a copy of MatchControllerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchControllerStateCopyWith<MatchControllerState> get copyWith => _$MatchControllerStateCopyWithImpl<MatchControllerState>(this as MatchControllerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchControllerState&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.participants, participants));
}


@override
int get hashCode => Object.hash(runtimeType,matchId,isLoading,errorMessage,const DeepCollectionEquality().hash(participants));

@override
String toString() {
  return 'MatchControllerState(matchId: $matchId, isLoading: $isLoading, errorMessage: $errorMessage, participants: $participants)';
}


}

/// @nodoc
abstract mixin class $MatchControllerStateCopyWith<$Res>  {
  factory $MatchControllerStateCopyWith(MatchControllerState value, $Res Function(MatchControllerState) _then) = _$MatchControllerStateCopyWithImpl;
@useResult
$Res call({
 String matchId, bool isLoading, String? errorMessage, List<Player> participants
});




}
/// @nodoc
class _$MatchControllerStateCopyWithImpl<$Res>
    implements $MatchControllerStateCopyWith<$Res> {
  _$MatchControllerStateCopyWithImpl(this._self, this._then);

  final MatchControllerState _self;
  final $Res Function(MatchControllerState) _then;

/// Create a copy of MatchControllerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? isLoading = null,Object? errorMessage = freezed,Object? participants = null,}) {
  return _then(_self.copyWith(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<Player>,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchControllerState].
extension MatchControllerStatePatterns on MatchControllerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchControllerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchControllerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchControllerState value)  $default,){
final _that = this;
switch (_that) {
case _MatchControllerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchControllerState value)?  $default,){
final _that = this;
switch (_that) {
case _MatchControllerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String matchId,  bool isLoading,  String? errorMessage,  List<Player> participants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchControllerState() when $default != null:
return $default(_that.matchId,_that.isLoading,_that.errorMessage,_that.participants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String matchId,  bool isLoading,  String? errorMessage,  List<Player> participants)  $default,) {final _that = this;
switch (_that) {
case _MatchControllerState():
return $default(_that.matchId,_that.isLoading,_that.errorMessage,_that.participants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String matchId,  bool isLoading,  String? errorMessage,  List<Player> participants)?  $default,) {final _that = this;
switch (_that) {
case _MatchControllerState() when $default != null:
return $default(_that.matchId,_that.isLoading,_that.errorMessage,_that.participants);case _:
  return null;

}
}

}

/// @nodoc


class _MatchControllerState implements MatchControllerState {
  const _MatchControllerState({required this.matchId, this.isLoading = false, this.errorMessage = null, final  List<Player> participants = const []}): _participants = participants;
  

@override final  String matchId;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String? errorMessage;
 final  List<Player> _participants;
@override@JsonKey() List<Player> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}


/// Create a copy of MatchControllerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchControllerStateCopyWith<_MatchControllerState> get copyWith => __$MatchControllerStateCopyWithImpl<_MatchControllerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchControllerState&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._participants, _participants));
}


@override
int get hashCode => Object.hash(runtimeType,matchId,isLoading,errorMessage,const DeepCollectionEquality().hash(_participants));

@override
String toString() {
  return 'MatchControllerState(matchId: $matchId, isLoading: $isLoading, errorMessage: $errorMessage, participants: $participants)';
}


}

/// @nodoc
abstract mixin class _$MatchControllerStateCopyWith<$Res> implements $MatchControllerStateCopyWith<$Res> {
  factory _$MatchControllerStateCopyWith(_MatchControllerState value, $Res Function(_MatchControllerState) _then) = __$MatchControllerStateCopyWithImpl;
@override @useResult
$Res call({
 String matchId, bool isLoading, String? errorMessage, List<Player> participants
});




}
/// @nodoc
class __$MatchControllerStateCopyWithImpl<$Res>
    implements _$MatchControllerStateCopyWith<$Res> {
  __$MatchControllerStateCopyWithImpl(this._self, this._then);

  final _MatchControllerState _self;
  final $Res Function(_MatchControllerState) _then;

/// Create a copy of MatchControllerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? isLoading = null,Object? errorMessage = freezed,Object? participants = null,}) {
  return _then(_MatchControllerState(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,participants: null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<Player>,
  ));
}


}

// dart format on
