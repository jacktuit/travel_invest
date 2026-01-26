// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceModel _$PlaceModelFromJson(Map<String, dynamic> json) => _PlaceModel(
  id: json['id'] as String,
  name: json['name'] as String,
  location: json['location'] as String,
  distance: json['distance'] as String,
  discount: json['discount'] as String?,
  imageUrls: (json['imageUrls'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  isFavorite: json['isFavorite'] as bool? ?? false,
);

Map<String, dynamic> _$PlaceModelToJson(_PlaceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'distance': instance.distance,
      'discount': instance.discount,
      'imageUrls': instance.imageUrls,
      'isFavorite': instance.isFavorite,
    };
