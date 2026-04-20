// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerServiceState {

 bool get isLoading; String? get errorMessage; List<Player> get players;
/// Create a copy of PlayerServiceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerServiceStateCopyWith<PlayerServiceState> get copyWith => _$PlayerServiceStateCopyWithImpl<PlayerServiceState>(this as PlayerServiceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerServiceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.players, players));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(players));

@override
String toString() {
  return 'PlayerServiceState(isLoading: $isLoading, errorMessage: $errorMessage, players: $players)';
}


}

/// @nodoc
abstract mixin class $PlayerServiceStateCopyWith<$Res>  {
  factory $PlayerServiceStateCopyWith(PlayerServiceState value, $Res Function(PlayerServiceState) _then) = _$PlayerServiceStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage, List<Player> players
});




}
/// @nodoc
class _$PlayerServiceStateCopyWithImpl<$Res>
    implements $PlayerServiceStateCopyWith<$Res> {
  _$PlayerServiceStateCopyWithImpl(this._self, this._then);

  final PlayerServiceState _self;
  final $Res Function(PlayerServiceState) _then;

/// Create a copy of PlayerServiceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? players = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<Player>,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerServiceState].
extension PlayerServiceStatePatterns on PlayerServiceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerServiceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerServiceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerServiceState value)  $default,){
final _that = this;
switch (_that) {
case _PlayerServiceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerServiceState value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerServiceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  List<Player> players)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerServiceState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.players);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  List<Player> players)  $default,) {final _that = this;
switch (_that) {
case _PlayerServiceState():
return $default(_that.isLoading,_that.errorMessage,_that.players);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? errorMessage,  List<Player> players)?  $default,) {final _that = this;
switch (_that) {
case _PlayerServiceState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.players);case _:
  return null;

}
}

}

/// @nodoc


class _PlayerServiceState implements PlayerServiceState {
  const _PlayerServiceState({this.isLoading = false, this.errorMessage = null, final  List<Player> players = const []}): _players = players;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String? errorMessage;
 final  List<Player> _players;
@override@JsonKey() List<Player> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}


/// Create a copy of PlayerServiceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerServiceStateCopyWith<_PlayerServiceState> get copyWith => __$PlayerServiceStateCopyWithImpl<_PlayerServiceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerServiceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._players, _players));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(_players));

@override
String toString() {
  return 'PlayerServiceState(isLoading: $isLoading, errorMessage: $errorMessage, players: $players)';
}


}

/// @nodoc
abstract mixin class _$PlayerServiceStateCopyWith<$Res> implements $PlayerServiceStateCopyWith<$Res> {
  factory _$PlayerServiceStateCopyWith(_PlayerServiceState value, $Res Function(_PlayerServiceState) _then) = __$PlayerServiceStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage, List<Player> players
});




}
/// @nodoc
class __$PlayerServiceStateCopyWithImpl<$Res>
    implements _$PlayerServiceStateCopyWith<$Res> {
  __$PlayerServiceStateCopyWithImpl(this._self, this._then);

  final _PlayerServiceState _self;
  final $Res Function(_PlayerServiceState) _then;

/// Create a copy of PlayerServiceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? players = null,}) {
  return _then(_PlayerServiceState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<Player>,
  ));
}


}

// dart format on
