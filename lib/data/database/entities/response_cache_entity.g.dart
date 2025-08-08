// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_cache_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseCacheEntity _$ResponseCacheEntityFromJson(Map<String, dynamic> json) =>
    _ResponseCacheEntity(
      url: json['url'] as String,
      withAuth: (json['withAuth'] as num?)?.toInt(),
      json: json['json'] as String?,
    );

Map<String, dynamic> _$ResponseCacheEntityToJson(
  _ResponseCacheEntity instance,
) => <String, dynamic>{
  'url': instance.url,
  'withAuth': instance.withAuth,
  'json': instance.json,
};
