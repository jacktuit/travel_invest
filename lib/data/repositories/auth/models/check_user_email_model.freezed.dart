// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_user_email_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckUserEmailResponse {

 bool? get email; int? get id;
/// Create a copy of CheckUserEmailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckUserEmailResponseCopyWith<CheckUserEmailResponse> get copyWith => _$CheckUserEmailResponseCopyWithImpl<CheckUserEmailResponse>(this as CheckUserEmailResponse, _$identity);

  /// Serializes this CheckUserEmailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckUserEmailResponse&&(identical(other.email, email) || other.email == email)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,id);

@override
String toString() {
  return 'CheckUserEmailResponse(email: $email, id: $id)';
}


}

/// @nodoc
abstract mixin class $CheckUserEmailResponseCopyWith<$Res>  {
  factory $CheckUserEmailResponseCopyWith(CheckUserEmailResponse value, $Res Function(CheckUserEmailResponse) _then) = _$CheckUserEmailResponseCopyWithImpl;
@useResult
$Res call({
 bool? email, int? id
});




}
/// @nodoc
class _$CheckUserEmailResponseCopyWithImpl<$Res>
    implements $CheckUserEmailResponseCopyWith<$Res> {
  _$CheckUserEmailResponseCopyWithImpl(this._self, this._then);

  final CheckUserEmailResponse _self;
  final $Res Function(CheckUserEmailResponse) _then;

/// Create a copy of CheckUserEmailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as bool?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckUserEmailResponse].
extension CheckUserEmailResponsePatterns on CheckUserEmailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckUserEmailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckUserEmailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckUserEmailResponse value)  $default,){
final _that = this;
switch (_that) {
case _CheckUserEmailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckUserEmailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CheckUserEmailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? email,  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckUserEmailResponse() when $default != null:
return $default(_that.email,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? email,  int? id)  $default,) {final _that = this;
switch (_that) {
case _CheckUserEmailResponse():
return $default(_that.email,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? email,  int? id)?  $default,) {final _that = this;
switch (_that) {
case _CheckUserEmailResponse() when $default != null:
return $default(_that.email,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckUserEmailResponse extends CheckUserEmailResponse {
  const _CheckUserEmailResponse({this.email, this.id}): super._();
  factory _CheckUserEmailResponse.fromJson(Map<String, dynamic> json) => _$CheckUserEmailResponseFromJson(json);

@override final  bool? email;
@override final  int? id;

/// Create a copy of CheckUserEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckUserEmailResponseCopyWith<_CheckUserEmailResponse> get copyWith => __$CheckUserEmailResponseCopyWithImpl<_CheckUserEmailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckUserEmailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckUserEmailResponse&&(identical(other.email, email) || other.email == email)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,id);

@override
String toString() {
  return 'CheckUserEmailResponse(email: $email, id: $id)';
}


}

/// @nodoc
abstract mixin class _$CheckUserEmailResponseCopyWith<$Res> implements $CheckUserEmailResponseCopyWith<$Res> {
  factory _$CheckUserEmailResponseCopyWith(_CheckUserEmailResponse value, $Res Function(_CheckUserEmailResponse) _then) = __$CheckUserEmailResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? email, int? id
});




}
/// @nodoc
class __$CheckUserEmailResponseCopyWithImpl<$Res>
    implements _$CheckUserEmailResponseCopyWith<$Res> {
  __$CheckUserEmailResponseCopyWithImpl(this._self, this._then);

  final _CheckUserEmailResponse _self;
  final $Res Function(_CheckUserEmailResponse) _then;

/// Create a copy of CheckUserEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? id = freezed,}) {
  return _then(_CheckUserEmailResponse(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as bool?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
