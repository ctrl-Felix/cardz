// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_player_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddPlayerState {

 bool get isLoading; String? get errorMessage;
/// Create a copy of AddPlayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddPlayerStateCopyWith<AddPlayerState> get copyWith => _$AddPlayerStateCopyWithImpl<AddPlayerState>(this as AddPlayerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddPlayerState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage);

@override
String toString() {
  return 'AddPlayerState(isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AddPlayerStateCopyWith<$Res>  {
  factory $AddPlayerStateCopyWith(AddPlayerState value, $Res Function(AddPlayerState) _then) = _$AddPlayerStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage
});




}
/// @nodoc
class _$AddPlayerStateCopyWithImpl<$Res>
    implements $AddPlayerStateCopyWith<$Res> {
  _$AddPlayerStateCopyWithImpl(this._self, this._then);

  final AddPlayerState _self;
  final $Res Function(AddPlayerState) _then;

/// Create a copy of AddPlayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddPlayerState].
extension AddPlayerStatePatterns on AddPlayerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddPlayerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddPlayerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddPlayerState value)  $default,){
final _that = this;
switch (_that) {
case _AddPlayerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddPlayerState value)?  $default,){
final _that = this;
switch (_that) {
case _AddPlayerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddPlayerState() when $default != null:
return $default(_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AddPlayerState():
return $default(_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AddPlayerState() when $default != null:
return $default(_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AddPlayerState implements AddPlayerState {
  const _AddPlayerState({this.isLoading = false, this.errorMessage = null});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String? errorMessage;

/// Create a copy of AddPlayerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddPlayerStateCopyWith<_AddPlayerState> get copyWith => __$AddPlayerStateCopyWithImpl<_AddPlayerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddPlayerState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage);

@override
String toString() {
  return 'AddPlayerState(isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AddPlayerStateCopyWith<$Res> implements $AddPlayerStateCopyWith<$Res> {
  factory _$AddPlayerStateCopyWith(_AddPlayerState value, $Res Function(_AddPlayerState) _then) = __$AddPlayerStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage
});




}
/// @nodoc
class __$AddPlayerStateCopyWithImpl<$Res>
    implements _$AddPlayerStateCopyWith<$Res> {
  __$AddPlayerStateCopyWithImpl(this._self, this._then);

  final _AddPlayerState _self;
  final $Res Function(_AddPlayerState) _then;

/// Create a copy of AddPlayerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_AddPlayerState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
