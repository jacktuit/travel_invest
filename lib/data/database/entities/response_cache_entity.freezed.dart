// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_cache_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseCacheEntity {

 String get url; int? get withAuth; String? get json;
/// Create a copy of ResponseCacheEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseCacheEntityCopyWith<ResponseCacheEntity> get copyWith => _$ResponseCacheEntityCopyWithImpl<ResponseCacheEntity>(this as ResponseCacheEntity, _$identity);

  /// Serializes this ResponseCacheEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseCacheEntity&&(identical(other.url, url) || other.url == url)&&(identical(other.withAuth, withAuth) || other.withAuth == withAuth)&&(identical(other.json, json) || other.json == json));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,withAuth,json);

@override
String toString() {
  return 'ResponseCacheEntity(url: $url, withAuth: $withAuth, json: $json)';
}


}

/// @nodoc
abstract mixin class $ResponseCacheEntityCopyWith<$Res>  {
  factory $ResponseCacheEntityCopyWith(ResponseCacheEntity value, $Res Function(ResponseCacheEntity) _then) = _$ResponseCacheEntityCopyWithImpl;
@useResult
$Res call({
 String url, int? withAuth, String? json
});




}
/// @nodoc
class _$ResponseCacheEntityCopyWithImpl<$Res>
    implements $ResponseCacheEntityCopyWith<$Res> {
  _$ResponseCacheEntityCopyWithImpl(this._self, this._then);

  final ResponseCacheEntity _self;
  final $Res Function(ResponseCacheEntity) _then;

/// Create a copy of ResponseCacheEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? withAuth = freezed,Object? json = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,withAuth: freezed == withAuth ? _self.withAuth : withAuth // ignore: cast_nullable_to_non_nullable
as int?,json: freezed == json ? _self.json : json // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponseCacheEntity].
extension ResponseCacheEntityPatterns on ResponseCacheEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseCacheEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseCacheEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseCacheEntity value)  $default,){
final _that = this;
switch (_that) {
case _ResponseCacheEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseCacheEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseCacheEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  int? withAuth,  String? json)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseCacheEntity() when $default != null:
return $default(_that.url,_that.withAuth,_that.json);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  int? withAuth,  String? json)  $default,) {final _that = this;
switch (_that) {
case _ResponseCacheEntity():
return $default(_that.url,_that.withAuth,_that.json);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  int? withAuth,  String? json)?  $default,) {final _that = this;
switch (_that) {
case _ResponseCacheEntity() when $default != null:
return $default(_that.url,_that.withAuth,_that.json);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResponseCacheEntity extends ResponseCacheEntity {
  const _ResponseCacheEntity({required this.url, this.withAuth, this.json}): super._();
  factory _ResponseCacheEntity.fromJson(Map<String, dynamic> json) => _$ResponseCacheEntityFromJson(json);

@override final  String url;
@override final  int? withAuth;
@override final  String? json;

/// Create a copy of ResponseCacheEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseCacheEntityCopyWith<_ResponseCacheEntity> get copyWith => __$ResponseCacheEntityCopyWithImpl<_ResponseCacheEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseCacheEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseCacheEntity&&(identical(other.url, url) || other.url == url)&&(identical(other.withAuth, withAuth) || other.withAuth == withAuth)&&(identical(other.json, json) || other.json == json));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,withAuth,json);

@override
String toString() {
  return 'ResponseCacheEntity(url: $url, withAuth: $withAuth, json: $json)';
}


}

/// @nodoc
abstract mixin class _$ResponseCacheEntityCopyWith<$Res> implements $ResponseCacheEntityCopyWith<$Res> {
  factory _$ResponseCacheEntityCopyWith(_ResponseCacheEntity value, $Res Function(_ResponseCacheEntity) _then) = __$ResponseCacheEntityCopyWithImpl;
@override @useResult
$Res call({
 String url, int? withAuth, String? json
});




}
/// @nodoc
class __$ResponseCacheEntityCopyWithImpl<$Res>
    implements _$ResponseCacheEntityCopyWith<$Res> {
  __$ResponseCacheEntityCopyWithImpl(this._self, this._then);

  final _ResponseCacheEntity _self;
  final $Res Function(_ResponseCacheEntity) _then;

/// Create a copy of ResponseCacheEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? withAuth = freezed,Object? json = freezed,}) {
  return _then(_ResponseCacheEntity(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,withAuth: freezed == withAuth ? _self.withAuth : withAuth // ignore: cast_nullable_to_non_nullable
as int?,json: freezed == json ? _self.json : json // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
