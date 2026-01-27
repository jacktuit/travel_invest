// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PartnersResponse _$PartnersResponseFromJson(Map<String, dynamic> json) =>
    _PartnersResponse(
      hotels: (json['hotels'] as List<dynamic>)
          .map((e) => Hotel.fromJson(e as Map<String, dynamic>))
          .toList(),
      carRentals: (json['car_rentals'] as List<dynamic>)
          .map((e) => CarRental.fromJson(e as Map<String, dynamic>))
          .toList(),
      restaurants: (json['restaurants'] as List<dynamic>)
          .map((e) => Restaurant.fromJson(e as Map<String, dynamic>))
          .toList(),
      attractions: (json['attractions'] as List<dynamic>)
          .map((e) => Attraction.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PartnersResponseToJson(_PartnersResponse instance) =>
    <String, dynamic>{
      'hotels': instance.hotels.map((e) => e.toJson()).toList(),
      'car_rentals': instance.carRentals.map((e) => e.toJson()).toList(),
      'restaurants': instance.restaurants.map((e) => e.toJson()).toList(),
      'attractions': instance.attractions.map((e) => e.toJson()).toList(),
      'events': instance.events.map((e) => e.toJson()).toList(),
    };

_Hotel _$HotelFromJson(Map<String, dynamic> json) => _Hotel(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  website: json['website'] as String?,
  country: json['country'] as String,
  city: json['city'] as String,
  address: json['address'] as String,
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  priceFrom: (json['price_from'] as num).toDouble(),
  currency: json['currency'] as String,
  discountType: json['discount_type'] as String?,
  discountValue: (json['discount_value'] as num?)?.toDouble(),
  discountTitle: json['discount_title'] as String?,
  discountValidFrom: json['discount_valid_from'] as String?,
  discountValidTo: json['discount_valid_to'] as String?,
  status: json['status'] as String,
  rating: (json['rating'] as num?)?.toDouble(),
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  attributes: json['attributes'] as Map<String, dynamic>?,
  isFavorite: json['isFavorite'] as bool? ?? false,
);

Map<String, dynamic> _$HotelToJson(_Hotel instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'phone': instance.phone,
  'email': instance.email,
  'website': instance.website,
  'country': instance.country,
  'city': instance.city,
  'address': instance.address,
  'lat': instance.lat,
  'lng': instance.lng,
  'price_from': instance.priceFrom,
  'currency': instance.currency,
  'discount_type': instance.discountType,
  'discount_value': instance.discountValue,
  'discount_title': instance.discountTitle,
  'discount_valid_from': instance.discountValidFrom,
  'discount_valid_to': instance.discountValidTo,
  'status': instance.status,
  'rating': instance.rating,
  'images': instance.images,
  'attributes': instance.attributes,
  'isFavorite': instance.isFavorite,
};

_CarRental _$CarRentalFromJson(Map<String, dynamic> json) => _CarRental(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  country: json['country'] as String,
  city: json['city'] as String,
  address: json['address'] as String,
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  pricePerDay: (json['price_per_day'] as num).toDouble(),
  currency: json['currency'] as String,
  discountType: json['discount_type'] as String?,
  discountValue: (json['discount_value'] as num?)?.toDouble(),
  discountTitle: json['discount_title'] as String?,
  discountValidFrom: json['discount_valid_from'] as String?,
  discountValidTo: json['discount_valid_to'] as String?,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  attributes: json['attributes'] as Map<String, dynamic>?,
  status: json['status'] as String,
  isFavorite: json['isFavorite'] as bool? ?? false,
);

Map<String, dynamic> _$CarRentalToJson(_CarRental instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.lng,
      'price_per_day': instance.pricePerDay,
      'currency': instance.currency,
      'discount_type': instance.discountType,
      'discount_value': instance.discountValue,
      'discount_title': instance.discountTitle,
      'discount_valid_from': instance.discountValidFrom,
      'discount_valid_to': instance.discountValidTo,
      'images': instance.images,
      'attributes': instance.attributes,
      'status': instance.status,
      'isFavorite': instance.isFavorite,
    };

_Restaurant _$RestaurantFromJson(Map<String, dynamic> json) => _Restaurant(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  country: json['country'] as String,
  city: json['city'] as String,
  address: json['address'] as String,
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  avgCheck: (json['avg_check'] as num).toDouble(),
  currency: json['currency'] as String,
  discountType: json['discount_type'] as String?,
  discountValue: (json['discount_value'] as num?)?.toDouble(),
  discountTitle: json['discount_title'] as String?,
  discountValidFrom: json['discount_valid_from'] as String?,
  discountValidTo: json['discount_valid_to'] as String?,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  attributes: json['attributes'] as Map<String, dynamic>?,
  status: json['status'] as String,
  isFavorite: json['isFavorite'] as bool? ?? false,
);

Map<String, dynamic> _$RestaurantToJson(_Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.lng,
      'avg_check': instance.avgCheck,
      'currency': instance.currency,
      'discount_type': instance.discountType,
      'discount_value': instance.discountValue,
      'discount_title': instance.discountTitle,
      'discount_valid_from': instance.discountValidFrom,
      'discount_valid_to': instance.discountValidTo,
      'images': instance.images,
      'attributes': instance.attributes,
      'status': instance.status,
      'isFavorite': instance.isFavorite,
    };

_Attraction _$AttractionFromJson(Map<String, dynamic> json) => _Attraction(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  country: json['country'] as String,
  city: json['city'] as String,
  address: json['address'] as String,
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  price: (json['price'] as num).toDouble(),
  currency: json['currency'] as String,
  discountType: json['discount_type'] as String?,
  discountValue: (json['discount_value'] as num?)?.toDouble(),
  discountTitle: json['discount_title'] as String?,
  discountValidFrom: json['discount_valid_from'] as String?,
  discountValidTo: json['discount_valid_to'] as String?,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  attributes: json['attributes'] as Map<String, dynamic>?,
  status: json['status'] as String,
  isFavorite: json['isFavorite'] as bool? ?? false,
);

Map<String, dynamic> _$AttractionToJson(_Attraction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.lng,
      'price': instance.price,
      'currency': instance.currency,
      'discount_type': instance.discountType,
      'discount_value': instance.discountValue,
      'discount_title': instance.discountTitle,
      'discount_valid_from': instance.discountValidFrom,
      'discount_valid_to': instance.discountValidTo,
      'images': instance.images,
      'attributes': instance.attributes,
      'status': instance.status,
      'isFavorite': instance.isFavorite,
    };

_Event _$EventFromJson(Map<String, dynamic> json) => _Event(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  startsAt: json['starts_at'] as String,
  endsAt: json['ends_at'] as String,
  country: json['country'] as String,
  city: json['city'] as String,
  address: json['address'] as String,
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  price: (json['price'] as num).toDouble(),
  currency: json['currency'] as String,
  discountType: json['discount_type'] as String?,
  discountValue: (json['discount_value'] as num?)?.toDouble(),
  discountTitle: json['discount_title'] as String?,
  discountValidFrom: json['discount_valid_from'] as String?,
  discountValidTo: json['discount_valid_to'] as String?,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  attributes: json['attributes'] as Map<String, dynamic>?,
  status: json['status'] as String,
  isFavorite: json['isFavorite'] as bool? ?? false,
);

Map<String, dynamic> _$EventToJson(_Event instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'starts_at': instance.startsAt,
  'ends_at': instance.endsAt,
  'country': instance.country,
  'city': instance.city,
  'address': instance.address,
  'lat': instance.lat,
  'lng': instance.lng,
  'price': instance.price,
  'currency': instance.currency,
  'discount_type': instance.discountType,
  'discount_value': instance.discountValue,
  'discount_title': instance.discountTitle,
  'discount_valid_from': instance.discountValidFrom,
  'discount_valid_to': instance.discountValidTo,
  'images': instance.images,
  'attributes': instance.attributes,
  'status': instance.status,
  'isFavorite': instance.isFavorite,
};
