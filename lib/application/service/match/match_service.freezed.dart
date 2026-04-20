// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchServiceState {

 bool get isLoading; String? get errorMessage; List<TheMatch> get matches;
/// Create a copy of MatchServiceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchServiceStateCopyWith<MatchServiceState> get copyWith => _$MatchServiceStateCopyWithImpl<MatchServiceState>(this as MatchServiceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchServiceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.matches, matches));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(matches));

@override
String toString() {
  return 'MatchServiceState(isLoading: $isLoading, errorMessage: $errorMessage, matches: $matches)';
}


}

/// @nodoc
abstract mixin class $MatchServiceStateCopyWith<$Res>  {
  factory $MatchServiceStateCopyWith(MatchServiceState value, $Res Function(MatchServiceState) _then) = _$MatchServiceStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage, List<TheMatch> matches
});




}
/// @nodoc
class _$MatchServiceStateCopyWithImpl<$Res>
    implements $MatchServiceStateCopyWith<$Res> {
  _$MatchServiceStateCopyWithImpl(this._self, this._then);

  final MatchServiceState _self;
  final $Res Function(MatchServiceState) _then;

/// Create a copy of MatchServiceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? matches = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,matches: null == matches ? _self.matches : matches // ignore: cast_nullable_to_non_nullable
as List<TheMatch>,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchServiceState].
extension MatchServiceStatePatterns on MatchServiceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchServiceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchServiceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchServiceState value)  $default,){
final _that = this;
switch (_that) {
case _MatchServiceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchServiceState value)?  $default,){
final _that = this;
switch (_that) {
case _MatchServiceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  List<TheMatch> matches)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchServiceState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.matches);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  List<TheMatch> matches)  $default,) {final _that = this;
switch (_that) {
case _MatchServiceState():
return $default(_that.isLoading,_that.errorMessage,_that.matches);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? errorMessage,  List<TheMatch> matches)?  $default,) {final _that = this;
switch (_that) {
case _MatchServiceState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.matches);case _:
  return null;

}
}

}

/// @nodoc


class _MatchServiceState implements MatchServiceState {
  const _MatchServiceState({this.isLoading = false, this.errorMessage = null, final  List<TheMatch> matches = const []}): _matches = matches;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String? errorMessage;
 final  List<TheMatch> _matches;
@override@JsonKey() List<TheMatch> get matches {
  if (_matches is EqualUnmodifiableListView) return _matches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matches);
}


/// Create a copy of MatchServiceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchServiceStateCopyWith<_MatchServiceState> get copyWith => __$MatchServiceStateCopyWithImpl<_MatchServiceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchServiceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._matches, _matches));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(_matches));

@override
String toString() {
  return 'MatchServiceState(isLoading: $isLoading, errorMessage: $errorMessage, matches: $matches)';
}


}

/// @nodoc
abstract mixin class _$MatchServiceStateCopyWith<$Res> implements $MatchServiceStateCopyWith<$Res> {
  factory _$MatchServiceStateCopyWith(_MatchServiceState value, $Res Function(_MatchServiceState) _then) = __$MatchServiceStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage, List<TheMatch> matches
});




}
/// @nodoc
class __$MatchServiceStateCopyWithImpl<$Res>
    implements _$MatchServiceStateCopyWith<$Res> {
  __$MatchServiceStateCopyWithImpl(this._self, this._then);

  final _MatchServiceState _self;
  final $Res Function(_MatchServiceState) _then;

/// Create a copy of MatchServiceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? matches = null,}) {
  return _then(_MatchServiceState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,matches: null == matches ? _self._matches : matches // ignore: cast_nullable_to_non_nullable
as List<TheMatch>,
  ));
}


}

// dart format on
