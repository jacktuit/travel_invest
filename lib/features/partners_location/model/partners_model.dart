import 'package:freezed_annotation/freezed_annotation.dart';

part 'partners_model.freezed.dart';
part 'partners_model.g.dart';

@freezed
abstract class PartnersResponse with _$PartnersResponse {
  const factory PartnersResponse({
    required List<Hotel> hotels,
    @JsonKey(name: 'car_rentals') required List<CarRental> carRentals,
    required List<Restaurant> restaurants,
    required List<Attraction> attractions,
    required List<Event> events,
  }) = _PartnersResponse;

  factory PartnersResponse.fromJson(Map<String, dynamic> json) =>
      _$PartnersResponseFromJson(json);
}

@freezed
abstract class Hotel with _$Hotel {
  const Hotel._();

  const factory Hotel({
    required String id,
    required String title,
    required String description,
    String? phone,
    String? email,
    String? website,
    required String country,
    required String city,
    required String address,
    required double lat,
    required double lng,
    @JsonKey(name: 'price_from') required double priceFrom,
    required String currency,
    @JsonKey(name: 'discount_type') String? discountType,
    @JsonKey(name: 'discount_value') double? discountValue,
    @JsonKey(name: 'discount_title') String? discountTitle,
    @JsonKey(name: 'discount_valid_from') String? discountValidFrom,
    @JsonKey(name: 'discount_valid_to') String? discountValidTo,
    required String status,
    double? rating,
    required List<String> images,
    Map<String, dynamic>? attributes,
    @Default(false) bool isFavorite,
  }) = _Hotel;

  String get location => '$city, $address';

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}

@freezed
abstract class CarRental with _$CarRental {
  const CarRental._();

  const factory CarRental({
    required String id,
    required String title,
    required String description,
    required String country,
    required String city,
    required String address,
    required double lat,
    required double lng,
    @JsonKey(name: 'price_per_day') required double pricePerDay,
    required String currency,
    @JsonKey(name: 'discount_type') String? discountType,
    @JsonKey(name: 'discount_value') double? discountValue,
    @JsonKey(name: 'discount_title') String? discountTitle,
    @JsonKey(name: 'discount_valid_from') String? discountValidFrom,
    @JsonKey(name: 'discount_valid_to') String? discountValidTo,
    required List<String> images,
    Map<String, dynamic>? attributes,
    required String status,
    @Default(false) bool isFavorite,
  }) = _CarRental;

  String get location => '$city, $address';

  factory CarRental.fromJson(Map<String, dynamic> json) =>
      _$CarRentalFromJson(json);
}

@freezed
abstract class Restaurant with _$Restaurant {
  const Restaurant._();

  const factory Restaurant({
    required String id,
    required String title,
    required String description,
    required String country,
    required String city,
    required String address,
    required double lat,
    required double lng,
    @JsonKey(name: 'avg_check') required double avgCheck,
    required String currency,
    @JsonKey(name: 'discount_type') String? discountType,
    @JsonKey(name: 'discount_value') double? discountValue,
    @JsonKey(name: 'discount_title') String? discountTitle,
    @JsonKey(name: 'discount_valid_from') String? discountValidFrom,
    @JsonKey(name: 'discount_valid_to') String? discountValidTo,
    required List<String> images,
    Map<String, dynamic>? attributes,
    required String status,
    @Default(false) bool isFavorite,
  }) = _Restaurant;

  String get location => '$city, $address';

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);
}

@freezed
abstract class Attraction with _$Attraction {
  const Attraction._();

  const factory Attraction({
    required String id,
    required String title,
    required String description,
    required String country,
    required String city,
    required String address,
    required double lat,
    required double lng,
    required double price,
    required String currency,
    @JsonKey(name: 'discount_type') String? discountType,
    @JsonKey(name: 'discount_value') double? discountValue,
    @JsonKey(name: 'discount_title') String? discountTitle,
    @JsonKey(name: 'discount_valid_from') String? discountValidFrom,
    @JsonKey(name: 'discount_valid_to') String? discountValidTo,
    required List<String> images,
    Map<String, dynamic>? attributes,
    required String status,
    @Default(false) bool isFavorite,
  }) = _Attraction;

  String get location => '$city, $address';

  factory Attraction.fromJson(Map<String, dynamic> json) =>
      _$AttractionFromJson(json);
}

@freezed
abstract class Event with _$Event {
  const Event._();

  const factory Event({
    required String id,
    required String title,
    required String description,
    @JsonKey(name: 'starts_at') required String startsAt,
    @JsonKey(name: 'ends_at') required String endsAt,
    required String country,
    required String city,
    required String address,
    required double lat,
    required double lng,
    required double price,
    required String currency,
    @JsonKey(name: 'discount_type') String? discountType,
    @JsonKey(name: 'discount_value') double? discountValue,
    @JsonKey(name: 'discount_title') String? discountTitle,
    @JsonKey(name: 'discount_valid_from') String? discountValidFrom,
    @JsonKey(name: 'discount_valid_to') String? discountValidTo,
    required List<String> images,
    Map<String, dynamic>? attributes,
    required String status,
    @Default(false) bool isFavorite,
  }) = _Event;

  String get location => '$city, $address';

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

enum PlaceCategory {
  all,
  attraction,
  restaurant,
  hotel,
  carRental,
  event;

  String get displayName {
    switch (this) {
      case PlaceCategory.all:
        return 'All';
      case PlaceCategory.attraction:
        return 'Attractions';
      case PlaceCategory.restaurant:
        return 'Restaurants';
      case PlaceCategory.hotel:
        return 'Hotels';
      case PlaceCategory.carRental:
        return 'Car Rentals';
      case PlaceCategory.event:
        return 'Events';
    }
  }
}