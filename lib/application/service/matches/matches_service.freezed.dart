// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matches_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchesServiceState {

 bool get isLoading; String? get errorMessage; List<TheMatch> get matches;
/// Create a copy of MatchesServiceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchesServiceStateCopyWith<MatchesServiceState> get copyWith => _$MatchesServiceStateCopyWithImpl<MatchesServiceState>(this as MatchesServiceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchesServiceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.matches, matches));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(matches));

@override
String toString() {
  return 'MatchesServiceState(isLoading: $isLoading, errorMessage: $errorMessage, matches: $matches)';
}


}

/// @nodoc
abstract mixin class $MatchesServiceStateCopyWith<$Res>  {
  factory $MatchesServiceStateCopyWith(MatchesServiceState value, $Res Function(MatchesServiceState) _then) = _$MatchesServiceStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage, List<TheMatch> matches
});




}
/// @nodoc
class _$MatchesServiceStateCopyWithImpl<$Res>
    implements $MatchesServiceStateCopyWith<$Res> {
  _$MatchesServiceStateCopyWithImpl(this._self, this._then);

  final MatchesServiceState _self;
  final $Res Function(MatchesServiceState) _then;

/// Create a copy of MatchesServiceState
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


/// Adds pattern-matching-related methods to [MatchesServiceState].
extension MatchesServiceStatePatterns on MatchesServiceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchesServiceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchesServiceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchesServiceState value)  $default,){
final _that = this;
switch (_that) {
case _MatchesServiceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchesServiceState value)?  $default,){
final _that = this;
switch (_that) {
case _MatchesServiceState() when $default != null:
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
case _MatchesServiceState() when $default != null:
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
case _MatchesServiceState():
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
case _MatchesServiceState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.matches);case _:
  return null;

}
}

}

/// @nodoc


class _MatchesServiceState implements MatchesServiceState {
  const _MatchesServiceState({this.isLoading = false, this.errorMessage = null, final  List<TheMatch> matches = const []}): _matches = matches;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String? errorMessage;
 final  List<TheMatch> _matches;
@override@JsonKey() List<TheMatch> get matches {
  if (_matches is EqualUnmodifiableListView) return _matches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matches);
}


/// Create a copy of MatchesServiceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchesServiceStateCopyWith<_MatchesServiceState> get copyWith => __$MatchesServiceStateCopyWithImpl<_MatchesServiceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchesServiceState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._matches, _matches));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(_matches));

@override
String toString() {
  return 'MatchesServiceState(isLoading: $isLoading, errorMessage: $errorMessage, matches: $matches)';
}


}

/// @nodoc
abstract mixin class _$MatchesServiceStateCopyWith<$Res> implements $MatchesServiceStateCopyWith<$Res> {
  factory _$MatchesServiceStateCopyWith(_MatchesServiceState value, $Res Function(_MatchesServiceState) _then) = __$MatchesServiceStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage, List<TheMatch> matches
});




}
/// @nodoc
class __$MatchesServiceStateCopyWithImpl<$Res>
    implements _$MatchesServiceStateCopyWith<$Res> {
  __$MatchesServiceStateCopyWithImpl(this._self, this._then);

  final _MatchesServiceState _self;
  final $Res Function(_MatchesServiceState) _then;

/// Create a copy of MatchesServiceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? matches = null,}) {
  return _then(_MatchesServiceState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,matches: null == matches ? _self._matches : matches // ignore: cast_nullable_to_non_nullable
as List<TheMatch>,
  ));
}


}

// dart format on
