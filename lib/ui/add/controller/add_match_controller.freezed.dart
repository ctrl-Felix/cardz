// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_match_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddMatchState {

 bool get isLoading; String? get errorMessage; List<Player> get players;
/// Create a copy of AddMatchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMatchStateCopyWith<AddMatchState> get copyWith => _$AddMatchStateCopyWithImpl<AddMatchState>(this as AddMatchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMatchState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.players, players));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(players));

@override
String toString() {
  return 'AddMatchState(isLoading: $isLoading, errorMessage: $errorMessage, players: $players)';
}


}

/// @nodoc
abstract mixin class $AddMatchStateCopyWith<$Res>  {
  factory $AddMatchStateCopyWith(AddMatchState value, $Res Function(AddMatchState) _then) = _$AddMatchStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage, List<Player> players
});




}
/// @nodoc
class _$AddMatchStateCopyWithImpl<$Res>
    implements $AddMatchStateCopyWith<$Res> {
  _$AddMatchStateCopyWithImpl(this._self, this._then);

  final AddMatchState _self;
  final $Res Function(AddMatchState) _then;

/// Create a copy of AddMatchState
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


/// Adds pattern-matching-related methods to [AddMatchState].
extension AddMatchStatePatterns on AddMatchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddMatchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddMatchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddMatchState value)  $default,){
final _that = this;
switch (_that) {
case _AddMatchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddMatchState value)?  $default,){
final _that = this;
switch (_that) {
case _AddMatchState() when $default != null:
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
case _AddMatchState() when $default != null:
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
case _AddMatchState():
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
case _AddMatchState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.players);case _:
  return null;

}
}

}

/// @nodoc


class _AddMatchState implements AddMatchState {
  const _AddMatchState({this.isLoading = false, this.errorMessage = null, final  List<Player> players = const []}): _players = players;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String? errorMessage;
 final  List<Player> _players;
@override@JsonKey() List<Player> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}


/// Create a copy of AddMatchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddMatchStateCopyWith<_AddMatchState> get copyWith => __$AddMatchStateCopyWithImpl<_AddMatchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddMatchState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._players, _players));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(_players));

@override
String toString() {
  return 'AddMatchState(isLoading: $isLoading, errorMessage: $errorMessage, players: $players)';
}


}

/// @nodoc
abstract mixin class _$AddMatchStateCopyWith<$Res> implements $AddMatchStateCopyWith<$Res> {
  factory _$AddMatchStateCopyWith(_AddMatchState value, $Res Function(_AddMatchState) _then) = __$AddMatchStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage, List<Player> players
});




}
/// @nodoc
class __$AddMatchStateCopyWithImpl<$Res>
    implements _$AddMatchStateCopyWith<$Res> {
  __$AddMatchStateCopyWithImpl(this._self, this._then);

  final _AddMatchState _self;
  final $Res Function(_AddMatchState) _then;

/// Create a copy of AddMatchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? players = null,}) {
  return _then(_AddMatchState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<Player>,
  ));
}


}

// dart format on
