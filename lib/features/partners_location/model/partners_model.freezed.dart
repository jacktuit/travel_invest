// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partners_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PartnersResponse {

 List<Hotel> get hotels;@JsonKey(name: 'car_rentals') List<CarRental> get carRentals; List<Restaurant> get restaurants; List<Attraction> get attractions; List<Event> get events;
/// Create a copy of PartnersResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PartnersResponseCopyWith<PartnersResponse> get copyWith => _$PartnersResponseCopyWithImpl<PartnersResponse>(this as PartnersResponse, _$identity);

  /// Serializes this PartnersResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PartnersResponse&&const DeepCollectionEquality().equals(other.hotels, hotels)&&const DeepCollectionEquality().equals(other.carRentals, carRentals)&&const DeepCollectionEquality().equals(other.restaurants, restaurants)&&const DeepCollectionEquality().equals(other.attractions, attractions)&&const DeepCollectionEquality().equals(other.events, events));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(hotels),const DeepCollectionEquality().hash(carRentals),const DeepCollectionEquality().hash(restaurants),const DeepCollectionEquality().hash(attractions),const DeepCollectionEquality().hash(events));

@override
String toString() {
  return 'PartnersResponse(hotels: $hotels, carRentals: $carRentals, restaurants: $restaurants, attractions: $attractions, events: $events)';
}


}

/// @nodoc
abstract mixin class $PartnersResponseCopyWith<$Res>  {
  factory $PartnersResponseCopyWith(PartnersResponse value, $Res Function(PartnersResponse) _then) = _$PartnersResponseCopyWithImpl;
@useResult
$Res call({
 List<Hotel> hotels,@JsonKey(name: 'car_rentals') List<CarRental> carRentals, List<Restaurant> restaurants, List<Attraction> attractions, List<Event> events
});




}
/// @nodoc
class _$PartnersResponseCopyWithImpl<$Res>
    implements $PartnersResponseCopyWith<$Res> {
  _$PartnersResponseCopyWithImpl(this._self, this._then);

  final PartnersResponse _self;
  final $Res Function(PartnersResponse) _then;

/// Create a copy of PartnersResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hotels = null,Object? carRentals = null,Object? restaurants = null,Object? attractions = null,Object? events = null,}) {
  return _then(_self.copyWith(
hotels: null == hotels ? _self.hotels : hotels // ignore: cast_nullable_to_non_nullable
as List<Hotel>,carRentals: null == carRentals ? _self.carRentals : carRentals // ignore: cast_nullable_to_non_nullable
as List<CarRental>,restaurants: null == restaurants ? _self.restaurants : restaurants // ignore: cast_nullable_to_non_nullable
as List<Restaurant>,attractions: null == attractions ? _self.attractions : attractions // ignore: cast_nullable_to_non_nullable
as List<Attraction>,events: null == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<Event>,
  ));
}

}


/// Adds pattern-matching-related methods to [PartnersResponse].
extension PartnersResponsePatterns on PartnersResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PartnersResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PartnersResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PartnersResponse value)  $default,){
final _that = this;
switch (_that) {
case _PartnersResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PartnersResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PartnersResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Hotel> hotels, @JsonKey(name: 'car_rentals')  List<CarRental> carRentals,  List<Restaurant> restaurants,  List<Attraction> attractions,  List<Event> events)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PartnersResponse() when $default != null:
return $default(_that.hotels,_that.carRentals,_that.restaurants,_that.attractions,_that.events);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Hotel> hotels, @JsonKey(name: 'car_rentals')  List<CarRental> carRentals,  List<Restaurant> restaurants,  List<Attraction> attractions,  List<Event> events)  $default,) {final _that = this;
switch (_that) {
case _PartnersResponse():
return $default(_that.hotels,_that.carRentals,_that.restaurants,_that.attractions,_that.events);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Hotel> hotels, @JsonKey(name: 'car_rentals')  List<CarRental> carRentals,  List<Restaurant> restaurants,  List<Attraction> attractions,  List<Event> events)?  $default,) {final _that = this;
switch (_that) {
case _PartnersResponse() when $default != null:
return $default(_that.hotels,_that.carRentals,_that.restaurants,_that.attractions,_that.events);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PartnersResponse implements PartnersResponse {
  const _PartnersResponse({required final  List<Hotel> hotels, @JsonKey(name: 'car_rentals') required final  List<CarRental> carRentals, required final  List<Restaurant> restaurants, required final  List<Attraction> attractions, required final  List<Event> events}): _hotels = hotels,_carRentals = carRentals,_restaurants = restaurants,_attractions = attractions,_events = events;
  factory _PartnersResponse.fromJson(Map<String, dynamic> json) => _$PartnersResponseFromJson(json);

 final  List<Hotel> _hotels;
@override List<Hotel> get hotels {
  if (_hotels is EqualUnmodifiableListView) return _hotels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hotels);
}

 final  List<CarRental> _carRentals;
@override@JsonKey(name: 'car_rentals') List<CarRental> get carRentals {
  if (_carRentals is EqualUnmodifiableListView) return _carRentals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_carRentals);
}

 final  List<Restaurant> _restaurants;
@override List<Restaurant> get restaurants {
  if (_restaurants is EqualUnmodifiableListView) return _restaurants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_restaurants);
}

 final  List<Attraction> _attractions;
@override List<Attraction> get attractions {
  if (_attractions is EqualUnmodifiableListView) return _attractions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attractions);
}

 final  List<Event> _events;
@override List<Event> get events {
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_events);
}


/// Create a copy of PartnersResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PartnersResponseCopyWith<_PartnersResponse> get copyWith => __$PartnersResponseCopyWithImpl<_PartnersResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PartnersResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PartnersResponse&&const DeepCollectionEquality().equals(other._hotels, _hotels)&&const DeepCollectionEquality().equals(other._carRentals, _carRentals)&&const DeepCollectionEquality().equals(other._restaurants, _restaurants)&&const DeepCollectionEquality().equals(other._attractions, _attractions)&&const DeepCollectionEquality().equals(other._events, _events));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_hotels),const DeepCollectionEquality().hash(_carRentals),const DeepCollectionEquality().hash(_restaurants),const DeepCollectionEquality().hash(_attractions),const DeepCollectionEquality().hash(_events));

@override
String toString() {
  return 'PartnersResponse(hotels: $hotels, carRentals: $carRentals, restaurants: $restaurants, attractions: $attractions, events: $events)';
}


}

/// @nodoc
abstract mixin class _$PartnersResponseCopyWith<$Res> implements $PartnersResponseCopyWith<$Res> {
  factory _$PartnersResponseCopyWith(_PartnersResponse value, $Res Function(_PartnersResponse) _then) = __$PartnersResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Hotel> hotels,@JsonKey(name: 'car_rentals') List<CarRental> carRentals, List<Restaurant> restaurants, List<Attraction> attractions, List<Event> events
});




}
/// @nodoc
class __$PartnersResponseCopyWithImpl<$Res>
    implements _$PartnersResponseCopyWith<$Res> {
  __$PartnersResponseCopyWithImpl(this._self, this._then);

  final _PartnersResponse _self;
  final $Res Function(_PartnersResponse) _then;

/// Create a copy of PartnersResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hotels = null,Object? carRentals = null,Object? restaurants = null,Object? attractions = null,Object? events = null,}) {
  return _then(_PartnersResponse(
hotels: null == hotels ? _self._hotels : hotels // ignore: cast_nullable_to_non_nullable
as List<Hotel>,carRentals: null == carRentals ? _self._carRentals : carRentals // ignore: cast_nullable_to_non_nullable
as List<CarRental>,restaurants: null == restaurants ? _self._restaurants : restaurants // ignore: cast_nullable_to_non_nullable
as List<Restaurant>,attractions: null == attractions ? _self._attractions : attractions // ignore: cast_nullable_to_non_nullable
as List<Attraction>,events: null == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<Event>,
  ));
}


}


/// @nodoc
mixin _$Hotel {

 String get id; String get title; String get description; String? get phone; String? get email; String? get website; String get country; String get city; String get address; double get lat; double get lng;@JsonKey(name: 'price_from') double get priceFrom; String get currency;@JsonKey(name: 'discount_type') String? get discountType;@JsonKey(name: 'discount_value') double? get discountValue;@JsonKey(name: 'discount_title') String? get discountTitle;@JsonKey(name: 'discount_valid_from') String? get discountValidFrom;@JsonKey(name: 'discount_valid_to') String? get discountValidTo; String get status; double? get rating; List<String> get images; Map<String, dynamic>? get attributes; bool get isFavorite;
/// Create a copy of Hotel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HotelCopyWith<Hotel> get copyWith => _$HotelCopyWithImpl<Hotel>(this as Hotel, _$identity);

  /// Serializes this Hotel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Hotel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.website, website) || other.website == website)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.priceFrom, priceFrom) || other.priceFrom == priceFrom)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.discountTitle, discountTitle) || other.discountTitle == discountTitle)&&(identical(other.discountValidFrom, discountValidFrom) || other.discountValidFrom == discountValidFrom)&&(identical(other.discountValidTo, discountValidTo) || other.discountValidTo == discountValidTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,phone,email,website,country,city,address,lat,lng,priceFrom,currency,discountType,discountValue,discountTitle,discountValidFrom,discountValidTo,status,rating,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(attributes),isFavorite]);

@override
String toString() {
  return 'Hotel(id: $id, title: $title, description: $description, phone: $phone, email: $email, website: $website, country: $country, city: $city, address: $address, lat: $lat, lng: $lng, priceFrom: $priceFrom, currency: $currency, discountType: $discountType, discountValue: $discountValue, discountTitle: $discountTitle, discountValidFrom: $discountValidFrom, discountValidTo: $discountValidTo, status: $status, rating: $rating, images: $images, attributes: $attributes, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $HotelCopyWith<$Res>  {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) _then) = _$HotelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String? phone, String? email, String? website, String country, String city, String address, double lat, double lng,@JsonKey(name: 'price_from') double priceFrom, String currency,@JsonKey(name: 'discount_type') String? discountType,@JsonKey(name: 'discount_value') double? discountValue,@JsonKey(name: 'discount_title') String? discountTitle,@JsonKey(name: 'discount_valid_from') String? discountValidFrom,@JsonKey(name: 'discount_valid_to') String? discountValidTo, String status, double? rating, List<String> images, Map<String, dynamic>? attributes, bool isFavorite
});




}
/// @nodoc
class _$HotelCopyWithImpl<$Res>
    implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._self, this._then);

  final Hotel _self;
  final $Res Function(Hotel) _then;

/// Create a copy of Hotel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? phone = freezed,Object? email = freezed,Object? website = freezed,Object? country = null,Object? city = null,Object? address = null,Object? lat = null,Object? lng = null,Object? priceFrom = null,Object? currency = null,Object? discountType = freezed,Object? discountValue = freezed,Object? discountTitle = freezed,Object? discountValidFrom = freezed,Object? discountValidTo = freezed,Object? status = null,Object? rating = freezed,Object? images = null,Object? attributes = freezed,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,priceFrom: null == priceFrom ? _self.priceFrom : priceFrom // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,discountTitle: freezed == discountTitle ? _self.discountTitle : discountTitle // ignore: cast_nullable_to_non_nullable
as String?,discountValidFrom: freezed == discountValidFrom ? _self.discountValidFrom : discountValidFrom // ignore: cast_nullable_to_non_nullable
as String?,discountValidTo: freezed == discountValidTo ? _self.discountValidTo : discountValidTo // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Hotel].
extension HotelPatterns on Hotel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Hotel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Hotel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Hotel value)  $default,){
final _that = this;
switch (_that) {
case _Hotel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Hotel value)?  $default,){
final _that = this;
switch (_that) {
case _Hotel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String? phone,  String? email,  String? website,  String country,  String city,  String address,  double lat,  double lng, @JsonKey(name: 'price_from')  double priceFrom,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  String status,  double? rating,  List<String> images,  Map<String, dynamic>? attributes,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Hotel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.phone,_that.email,_that.website,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.priceFrom,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.status,_that.rating,_that.images,_that.attributes,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String? phone,  String? email,  String? website,  String country,  String city,  String address,  double lat,  double lng, @JsonKey(name: 'price_from')  double priceFrom,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  String status,  double? rating,  List<String> images,  Map<String, dynamic>? attributes,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _Hotel():
return $default(_that.id,_that.title,_that.description,_that.phone,_that.email,_that.website,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.priceFrom,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.status,_that.rating,_that.images,_that.attributes,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String? phone,  String? email,  String? website,  String country,  String city,  String address,  double lat,  double lng, @JsonKey(name: 'price_from')  double priceFrom,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  String status,  double? rating,  List<String> images,  Map<String, dynamic>? attributes,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _Hotel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.phone,_that.email,_that.website,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.priceFrom,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.status,_that.rating,_that.images,_that.attributes,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Hotel extends Hotel {
  const _Hotel({required this.id, required this.title, required this.description, this.phone, this.email, this.website, required this.country, required this.city, required this.address, required this.lat, required this.lng, @JsonKey(name: 'price_from') required this.priceFrom, required this.currency, @JsonKey(name: 'discount_type') this.discountType, @JsonKey(name: 'discount_value') this.discountValue, @JsonKey(name: 'discount_title') this.discountTitle, @JsonKey(name: 'discount_valid_from') this.discountValidFrom, @JsonKey(name: 'discount_valid_to') this.discountValidTo, required this.status, this.rating, required final  List<String> images, final  Map<String, dynamic>? attributes, this.isFavorite = false}): _images = images,_attributes = attributes,super._();
  factory _Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String? phone;
@override final  String? email;
@override final  String? website;
@override final  String country;
@override final  String city;
@override final  String address;
@override final  double lat;
@override final  double lng;
@override@JsonKey(name: 'price_from') final  double priceFrom;
@override final  String currency;
@override@JsonKey(name: 'discount_type') final  String? discountType;
@override@JsonKey(name: 'discount_value') final  double? discountValue;
@override@JsonKey(name: 'discount_title') final  String? discountTitle;
@override@JsonKey(name: 'discount_valid_from') final  String? discountValidFrom;
@override@JsonKey(name: 'discount_valid_to') final  String? discountValidTo;
@override final  String status;
@override final  double? rating;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  Map<String, dynamic>? _attributes;
@override Map<String, dynamic>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey() final  bool isFavorite;

/// Create a copy of Hotel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HotelCopyWith<_Hotel> get copyWith => __$HotelCopyWithImpl<_Hotel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HotelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Hotel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.website, website) || other.website == website)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.priceFrom, priceFrom) || other.priceFrom == priceFrom)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.discountTitle, discountTitle) || other.discountTitle == discountTitle)&&(identical(other.discountValidFrom, discountValidFrom) || other.discountValidFrom == discountValidFrom)&&(identical(other.discountValidTo, discountValidTo) || other.discountValidTo == discountValidTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,phone,email,website,country,city,address,lat,lng,priceFrom,currency,discountType,discountValue,discountTitle,discountValidFrom,discountValidTo,status,rating,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_attributes),isFavorite]);

@override
String toString() {
  return 'Hotel(id: $id, title: $title, description: $description, phone: $phone, email: $email, website: $website, country: $country, city: $city, address: $address, lat: $lat, lng: $lng, priceFrom: $priceFrom, currency: $currency, discountType: $discountType, discountValue: $discountValue, discountTitle: $discountTitle, discountValidFrom: $discountValidFrom, discountValidTo: $discountValidTo, status: $status, rating: $rating, images: $images, attributes: $attributes, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$HotelCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$HotelCopyWith(_Hotel value, $Res Function(_Hotel) _then) = __$HotelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String? phone, String? email, String? website, String country, String city, String address, double lat, double lng,@JsonKey(name: 'price_from') double priceFrom, String currency,@JsonKey(name: 'discount_type') String? discountType,@JsonKey(name: 'discount_value') double? discountValue,@JsonKey(name: 'discount_title') String? discountTitle,@JsonKey(name: 'discount_valid_from') String? discountValidFrom,@JsonKey(name: 'discount_valid_to') String? discountValidTo, String status, double? rating, List<String> images, Map<String, dynamic>? attributes, bool isFavorite
});




}
/// @nodoc
class __$HotelCopyWithImpl<$Res>
    implements _$HotelCopyWith<$Res> {
  __$HotelCopyWithImpl(this._self, this._then);

  final _Hotel _self;
  final $Res Function(_Hotel) _then;

/// Create a copy of Hotel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? phone = freezed,Object? email = freezed,Object? website = freezed,Object? country = null,Object? city = null,Object? address = null,Object? lat = null,Object? lng = null,Object? priceFrom = null,Object? currency = null,Object? discountType = freezed,Object? discountValue = freezed,Object? discountTitle = freezed,Object? discountValidFrom = freezed,Object? discountValidTo = freezed,Object? status = null,Object? rating = freezed,Object? images = null,Object? attributes = freezed,Object? isFavorite = null,}) {
  return _then(_Hotel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,priceFrom: null == priceFrom ? _self.priceFrom : priceFrom // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,discountTitle: freezed == discountTitle ? _self.discountTitle : discountTitle // ignore: cast_nullable_to_non_nullable
as String?,discountValidFrom: freezed == discountValidFrom ? _self.discountValidFrom : discountValidFrom // ignore: cast_nullable_to_non_nullable
as String?,discountValidTo: freezed == discountValidTo ? _self.discountValidTo : discountValidTo // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CarRental {

 String get id; String get title; String get description; String get country; String get city; String get address; double get lat; double get lng;@JsonKey(name: 'price_per_day') double get pricePerDay; String get currency;@JsonKey(name: 'discount_type') String? get discountType;@JsonKey(name: 'discount_value') double? get discountValue;@JsonKey(name: 'discount_title') String? get discountTitle;@JsonKey(name: 'discount_valid_from') String? get discountValidFrom;@JsonKey(name: 'discount_valid_to') String? get discountValidTo; List<String> get images; Map<String, dynamic>? get attributes; String get status; bool get isFavorite;
/// Create a copy of CarRental
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarRentalCopyWith<CarRental> get copyWith => _$CarRentalCopyWithImpl<CarRental>(this as CarRental, _$identity);

  /// Serializes this CarRental to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarRental&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.pricePerDay, pricePerDay) || other.pricePerDay == pricePerDay)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.discountTitle, discountTitle) || other.discountTitle == discountTitle)&&(identical(other.discountValidFrom, discountValidFrom) || other.discountValidFrom == discountValidFrom)&&(identical(other.discountValidTo, discountValidTo) || other.discountValidTo == discountValidTo)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,country,city,address,lat,lng,pricePerDay,currency,discountType,discountValue,discountTitle,discountValidFrom,discountValidTo,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(attributes),status,isFavorite]);

@override
String toString() {
  return 'CarRental(id: $id, title: $title, description: $description, country: $country, city: $city, address: $address, lat: $lat, lng: $lng, pricePerDay: $pricePerDay, currency: $currency, discountType: $discountType, discountValue: $discountValue, discountTitle: $discountTitle, discountValidFrom: $discountValidFrom, discountValidTo: $discountValidTo, images: $images, attributes: $attributes, status: $status, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $CarRentalCopyWith<$Res>  {
  factory $CarRentalCopyWith(CarRental value, $Res Function(CarRental) _then) = _$CarRentalCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String country, String city, String address, double lat, double lng,@JsonKey(name: 'price_per_day') double pricePerDay, String currency,@JsonKey(name: 'discount_type') String? discountType,@JsonKey(name: 'discount_value') double? discountValue,@JsonKey(name: 'discount_title') String? discountTitle,@JsonKey(name: 'discount_valid_from') String? discountValidFrom,@JsonKey(name: 'discount_valid_to') String? discountValidTo, List<String> images, Map<String, dynamic>? attributes, String status, bool isFavorite
});




}
/// @nodoc
class _$CarRentalCopyWithImpl<$Res>
    implements $CarRentalCopyWith<$Res> {
  _$CarRentalCopyWithImpl(this._self, this._then);

  final CarRental _self;
  final $Res Function(CarRental) _then;

/// Create a copy of CarRental
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? country = null,Object? city = null,Object? address = null,Object? lat = null,Object? lng = null,Object? pricePerDay = null,Object? currency = null,Object? discountType = freezed,Object? discountValue = freezed,Object? discountTitle = freezed,Object? discountValidFrom = freezed,Object? discountValidTo = freezed,Object? images = null,Object? attributes = freezed,Object? status = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,pricePerDay: null == pricePerDay ? _self.pricePerDay : pricePerDay // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,discountTitle: freezed == discountTitle ? _self.discountTitle : discountTitle // ignore: cast_nullable_to_non_nullable
as String?,discountValidFrom: freezed == discountValidFrom ? _self.discountValidFrom : discountValidFrom // ignore: cast_nullable_to_non_nullable
as String?,discountValidTo: freezed == discountValidTo ? _self.discountValidTo : discountValidTo // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CarRental].
extension CarRentalPatterns on CarRental {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CarRental value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CarRental() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CarRental value)  $default,){
final _that = this;
switch (_that) {
case _CarRental():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CarRental value)?  $default,){
final _that = this;
switch (_that) {
case _CarRental() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String country,  String city,  String address,  double lat,  double lng, @JsonKey(name: 'price_per_day')  double pricePerDay,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CarRental() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.pricePerDay,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String country,  String city,  String address,  double lat,  double lng, @JsonKey(name: 'price_per_day')  double pricePerDay,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _CarRental():
return $default(_that.id,_that.title,_that.description,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.pricePerDay,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String country,  String city,  String address,  double lat,  double lng, @JsonKey(name: 'price_per_day')  double pricePerDay,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _CarRental() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.pricePerDay,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CarRental extends CarRental {
  const _CarRental({required this.id, required this.title, required this.description, required this.country, required this.city, required this.address, required this.lat, required this.lng, @JsonKey(name: 'price_per_day') required this.pricePerDay, required this.currency, @JsonKey(name: 'discount_type') this.discountType, @JsonKey(name: 'discount_value') this.discountValue, @JsonKey(name: 'discount_title') this.discountTitle, @JsonKey(name: 'discount_valid_from') this.discountValidFrom, @JsonKey(name: 'discount_valid_to') this.discountValidTo, required final  List<String> images, final  Map<String, dynamic>? attributes, required this.status, this.isFavorite = false}): _images = images,_attributes = attributes,super._();
  factory _CarRental.fromJson(Map<String, dynamic> json) => _$CarRentalFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String country;
@override final  String city;
@override final  String address;
@override final  double lat;
@override final  double lng;
@override@JsonKey(name: 'price_per_day') final  double pricePerDay;
@override final  String currency;
@override@JsonKey(name: 'discount_type') final  String? discountType;
@override@JsonKey(name: 'discount_value') final  double? discountValue;
@override@JsonKey(name: 'discount_title') final  String? discountTitle;
@override@JsonKey(name: 'discount_valid_from') final  String? discountValidFrom;
@override@JsonKey(name: 'discount_valid_to') final  String? discountValidTo;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  Map<String, dynamic>? _attributes;
@override Map<String, dynamic>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String status;
@override@JsonKey() final  bool isFavorite;

/// Create a copy of CarRental
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarRentalCopyWith<_CarRental> get copyWith => __$CarRentalCopyWithImpl<_CarRental>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarRentalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarRental&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.pricePerDay, pricePerDay) || other.pricePerDay == pricePerDay)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.discountTitle, discountTitle) || other.discountTitle == discountTitle)&&(identical(other.discountValidFrom, discountValidFrom) || other.discountValidFrom == discountValidFrom)&&(identical(other.discountValidTo, discountValidTo) || other.discountValidTo == discountValidTo)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,country,city,address,lat,lng,pricePerDay,currency,discountType,discountValue,discountTitle,discountValidFrom,discountValidTo,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_attributes),status,isFavorite]);

@override
String toString() {
  return 'CarRental(id: $id, title: $title, description: $description, country: $country, city: $city, address: $address, lat: $lat, lng: $lng, pricePerDay: $pricePerDay, currency: $currency, discountType: $discountType, discountValue: $discountValue, discountTitle: $discountTitle, discountValidFrom: $discountValidFrom, discountValidTo: $discountValidTo, images: $images, attributes: $attributes, status: $status, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$CarRentalCopyWith<$Res> implements $CarRentalCopyWith<$Res> {
  factory _$CarRentalCopyWith(_CarRental value, $Res Function(_CarRental) _then) = __$CarRentalCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String country, String city, String address, double lat, double lng,@JsonKey(name: 'price_per_day') double pricePerDay, String currency,@JsonKey(name: 'discount_type') String? discountType,@JsonKey(name: 'discount_value') double? discountValue,@JsonKey(name: 'discount_title') String? discountTitle,@JsonKey(name: 'discount_valid_from') String? discountValidFrom,@JsonKey(name: 'discount_valid_to') String? discountValidTo, List<String> images, Map<String, dynamic>? attributes, String status, bool isFavorite
});




}
/// @nodoc
class __$CarRentalCopyWithImpl<$Res>
    implements _$CarRentalCopyWith<$Res> {
  __$CarRentalCopyWithImpl(this._self, this._then);

  final _CarRental _self;
  final $Res Function(_CarRental) _then;

/// Create a copy of CarRental
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? country = null,Object? city = null,Object? address = null,Object? lat = null,Object? lng = null,Object? pricePerDay = null,Object? currency = null,Object? discountType = freezed,Object? discountValue = freezed,Object? discountTitle = freezed,Object? discountValidFrom = freezed,Object? discountValidTo = freezed,Object? images = null,Object? attributes = freezed,Object? status = null,Object? isFavorite = null,}) {
  return _then(_CarRental(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,pricePerDay: null == pricePerDay ? _self.pricePerDay : pricePerDay // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,discountTitle: freezed == discountTitle ? _self.discountTitle : discountTitle // ignore: cast_nullable_to_non_nullable
as String?,discountValidFrom: freezed == discountValidFrom ? _self.discountValidFrom : discountValidFrom // ignore: cast_nullable_to_non_nullable
as String?,discountValidTo: freezed == discountValidTo ? _self.discountValidTo : discountValidTo // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Restaurant {

 String get id; String get title; String get description; String get country; String get city; String get address; double get lat; double get lng;@JsonKey(name: 'avg_check') double get avgCheck; String get currency;@JsonKey(name: 'discount_type') String? get discountType;@JsonKey(name: 'discount_value') double? get discountValue;@JsonKey(name: 'discount_title') String? get discountTitle;@JsonKey(name: 'discount_valid_from') String? get discountValidFrom;@JsonKey(name: 'discount_valid_to') String? get discountValidTo; List<String> get images; Map<String, dynamic>? get attributes; String get status; bool get isFavorite;
/// Create a copy of Restaurant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantCopyWith<Restaurant> get copyWith => _$RestaurantCopyWithImpl<Restaurant>(this as Restaurant, _$identity);

  /// Serializes this Restaurant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Restaurant&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.avgCheck, avgCheck) || other.avgCheck == avgCheck)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.discountTitle, discountTitle) || other.discountTitle == discountTitle)&&(identical(other.discountValidFrom, discountValidFrom) || other.discountValidFrom == discountValidFrom)&&(identical(other.discountValidTo, discountValidTo) || other.discountValidTo == discountValidTo)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,country,city,address,lat,lng,avgCheck,currency,discountType,discountValue,discountTitle,discountValidFrom,discountValidTo,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(attributes),status,isFavorite]);

@override
String toString() {
  return 'Restaurant(id: $id, title: $title, description: $description, country: $country, city: $city, address: $address, lat: $lat, lng: $lng, avgCheck: $avgCheck, currency: $currency, discountType: $discountType, discountValue: $discountValue, discountTitle: $discountTitle, discountValidFrom: $discountValidFrom, discountValidTo: $discountValidTo, images: $images, attributes: $attributes, status: $status, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $RestaurantCopyWith<$Res>  {
  factory $RestaurantCopyWith(Restaurant value, $Res Function(Restaurant) _then) = _$RestaurantCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String country, String city, String address, double lat, double lng,@JsonKey(name: 'avg_check') double avgCheck, String currency,@JsonKey(name: 'discount_type') String? discountType,@JsonKey(name: 'discount_value') double? discountValue,@JsonKey(name: 'discount_title') String? discountTitle,@JsonKey(name: 'discount_valid_from') String? discountValidFrom,@JsonKey(name: 'discount_valid_to') String? discountValidTo, List<String> images, Map<String, dynamic>? attributes, String status, bool isFavorite
});




}
/// @nodoc
class _$RestaurantCopyWithImpl<$Res>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._self, this._then);

  final Restaurant _self;
  final $Res Function(Restaurant) _then;

/// Create a copy of Restaurant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? country = null,Object? city = null,Object? address = null,Object? lat = null,Object? lng = null,Object? avgCheck = null,Object? currency = null,Object? discountType = freezed,Object? discountValue = freezed,Object? discountTitle = freezed,Object? discountValidFrom = freezed,Object? discountValidTo = freezed,Object? images = null,Object? attributes = freezed,Object? status = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,avgCheck: null == avgCheck ? _self.avgCheck : avgCheck // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,discountTitle: freezed == discountTitle ? _self.discountTitle : discountTitle // ignore: cast_nullable_to_non_nullable
as String?,discountValidFrom: freezed == discountValidFrom ? _self.discountValidFrom : discountValidFrom // ignore: cast_nullable_to_non_nullable
as String?,discountValidTo: freezed == discountValidTo ? _self.discountValidTo : discountValidTo // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Restaurant].
extension RestaurantPatterns on Restaurant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Restaurant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Restaurant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Restaurant value)  $default,){
final _that = this;
switch (_that) {
case _Restaurant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Restaurant value)?  $default,){
final _that = this;
switch (_that) {
case _Restaurant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String country,  String city,  String address,  double lat,  double lng, @JsonKey(name: 'avg_check')  double avgCheck,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Restaurant() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.avgCheck,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String country,  String city,  String address,  double lat,  double lng, @JsonKey(name: 'avg_check')  double avgCheck,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _Restaurant():
return $default(_that.id,_that.title,_that.description,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.avgCheck,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String country,  String city,  String address,  double lat,  double lng, @JsonKey(name: 'avg_check')  double avgCheck,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _Restaurant() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.avgCheck,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Restaurant extends Restaurant {
  const _Restaurant({required this.id, required this.title, required this.description, required this.country, required this.city, required this.address, required this.lat, required this.lng, @JsonKey(name: 'avg_check') required this.avgCheck, required this.currency, @JsonKey(name: 'discount_type') this.discountType, @JsonKey(name: 'discount_value') this.discountValue, @JsonKey(name: 'discount_title') this.discountTitle, @JsonKey(name: 'discount_valid_from') this.discountValidFrom, @JsonKey(name: 'discount_valid_to') this.discountValidTo, required final  List<String> images, final  Map<String, dynamic>? attributes, required this.status, this.isFavorite = false}): _images = images,_attributes = attributes,super._();
  factory _Restaurant.fromJson(Map<String, dynamic> json) => _$RestaurantFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String country;
@override final  String city;
@override final  String address;
@override final  double lat;
@override final  double lng;
@override@JsonKey(name: 'avg_check') final  double avgCheck;
@override final  String currency;
@override@JsonKey(name: 'discount_type') final  String? discountType;
@override@JsonKey(name: 'discount_value') final  double? discountValue;
@override@JsonKey(name: 'discount_title') final  String? discountTitle;
@override@JsonKey(name: 'discount_valid_from') final  String? discountValidFrom;
@override@JsonKey(name: 'discount_valid_to') final  String? discountValidTo;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  Map<String, dynamic>? _attributes;
@override Map<String, dynamic>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String status;
@override@JsonKey() final  bool isFavorite;

/// Create a copy of Restaurant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantCopyWith<_Restaurant> get copyWith => __$RestaurantCopyWithImpl<_Restaurant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Restaurant&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.avgCheck, avgCheck) || other.avgCheck == avgCheck)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.discountTitle, discountTitle) || other.discountTitle == discountTitle)&&(identical(other.discountValidFrom, discountValidFrom) || other.discountValidFrom == discountValidFrom)&&(identical(other.discountValidTo, discountValidTo) || other.discountValidTo == discountValidTo)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,country,city,address,lat,lng,avgCheck,currency,discountType,discountValue,discountTitle,discountValidFrom,discountValidTo,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_attributes),status,isFavorite]);

@override
String toString() {
  return 'Restaurant(id: $id, title: $title, description: $description, country: $country, city: $city, address: $address, lat: $lat, lng: $lng, avgCheck: $avgCheck, currency: $currency, discountType: $discountType, discountValue: $discountValue, discountTitle: $discountTitle, discountValidFrom: $discountValidFrom, discountValidTo: $discountValidTo, images: $images, attributes: $attributes, status: $status, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$RestaurantCopyWith<$Res> implements $RestaurantCopyWith<$Res> {
  factory _$RestaurantCopyWith(_Restaurant value, $Res Function(_Restaurant) _then) = __$RestaurantCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String country, String city, String address, double lat, double lng,@JsonKey(name: 'avg_check') double avgCheck, String currency,@JsonKey(name: 'discount_type') String? discountType,@JsonKey(name: 'discount_value') double? discountValue,@JsonKey(name: 'discount_title') String? discountTitle,@JsonKey(name: 'discount_valid_from') String? discountValidFrom,@JsonKey(name: 'discount_valid_to') String? discountValidTo, List<String> images, Map<String, dynamic>? attributes, String status, bool isFavorite
});




}
/// @nodoc
class __$RestaurantCopyWithImpl<$Res>
    implements _$RestaurantCopyWith<$Res> {
  __$RestaurantCopyWithImpl(this._self, this._then);

  final _Restaurant _self;
  final $Res Function(_Restaurant) _then;

/// Create a copy of Restaurant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? country = null,Object? city = null,Object? address = null,Object? lat = null,Object? lng = null,Object? avgCheck = null,Object? currency = null,Object? discountType = freezed,Object? discountValue = freezed,Object? discountTitle = freezed,Object? discountValidFrom = freezed,Object? discountValidTo = freezed,Object? images = null,Object? attributes = freezed,Object? status = null,Object? isFavorite = null,}) {
  return _then(_Restaurant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,avgCheck: null == avgCheck ? _self.avgCheck : avgCheck // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,discountTitle: freezed == discountTitle ? _self.discountTitle : discountTitle // ignore: cast_nullable_to_non_nullable
as String?,discountValidFrom: freezed == discountValidFrom ? _self.discountValidFrom : discountValidFrom // ignore: cast_nullable_to_non_nullable
as String?,discountValidTo: freezed == discountValidTo ? _self.discountValidTo : discountValidTo // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Attraction {

 String get id; String get title; String get description; String get country; String get city; String get address; double get lat; double get lng; double get price; String get currency;@JsonKey(name: 'discount_type') String? get discountType;@JsonKey(name: 'discount_value') double? get discountValue;@JsonKey(name: 'discount_title') String? get discountTitle;@JsonKey(name: 'discount_valid_from') String? get discountValidFrom;@JsonKey(name: 'discount_valid_to') String? get discountValidTo; List<String> get images; Map<String, dynamic>? get attributes; String get status; bool get isFavorite;
/// Create a copy of Attraction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttractionCopyWith<Attraction> get copyWith => _$AttractionCopyWithImpl<Attraction>(this as Attraction, _$identity);

  /// Serializes this Attraction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Attraction&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.discountTitle, discountTitle) || other.discountTitle == discountTitle)&&(identical(other.discountValidFrom, discountValidFrom) || other.discountValidFrom == discountValidFrom)&&(identical(other.discountValidTo, discountValidTo) || other.discountValidTo == discountValidTo)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,country,city,address,lat,lng,price,currency,discountType,discountValue,discountTitle,discountValidFrom,discountValidTo,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(attributes),status,isFavorite]);

@override
String toString() {
  return 'Attraction(id: $id, title: $title, description: $description, country: $country, city: $city, address: $address, lat: $lat, lng: $lng, price: $price, currency: $currency, discountType: $discountType, discountValue: $discountValue, discountTitle: $discountTitle, discountValidFrom: $discountValidFrom, discountValidTo: $discountValidTo, images: $images, attributes: $attributes, status: $status, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $AttractionCopyWith<$Res>  {
  factory $AttractionCopyWith(Attraction value, $Res Function(Attraction) _then) = _$AttractionCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String country, String city, String address, double lat, double lng, double price, String currency,@JsonKey(name: 'discount_type') String? discountType,@JsonKey(name: 'discount_value') double? discountValue,@JsonKey(name: 'discount_title') String? discountTitle,@JsonKey(name: 'discount_valid_from') String? discountValidFrom,@JsonKey(name: 'discount_valid_to') String? discountValidTo, List<String> images, Map<String, dynamic>? attributes, String status, bool isFavorite
});




}
/// @nodoc
class _$AttractionCopyWithImpl<$Res>
    implements $AttractionCopyWith<$Res> {
  _$AttractionCopyWithImpl(this._self, this._then);

  final Attraction _self;
  final $Res Function(Attraction) _then;

/// Create a copy of Attraction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? country = null,Object? city = null,Object? address = null,Object? lat = null,Object? lng = null,Object? price = null,Object? currency = null,Object? discountType = freezed,Object? discountValue = freezed,Object? discountTitle = freezed,Object? discountValidFrom = freezed,Object? discountValidTo = freezed,Object? images = null,Object? attributes = freezed,Object? status = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,discountTitle: freezed == discountTitle ? _self.discountTitle : discountTitle // ignore: cast_nullable_to_non_nullable
as String?,discountValidFrom: freezed == discountValidFrom ? _self.discountValidFrom : discountValidFrom // ignore: cast_nullable_to_non_nullable
as String?,discountValidTo: freezed == discountValidTo ? _self.discountValidTo : discountValidTo // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Attraction].
extension AttractionPatterns on Attraction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Attraction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Attraction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Attraction value)  $default,){
final _that = this;
switch (_that) {
case _Attraction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Attraction value)?  $default,){
final _that = this;
switch (_that) {
case _Attraction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String country,  String city,  String address,  double lat,  double lng,  double price,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Attraction() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.price,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String country,  String city,  String address,  double lat,  double lng,  double price,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _Attraction():
return $default(_that.id,_that.title,_that.description,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.price,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String country,  String city,  String address,  double lat,  double lng,  double price,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _Attraction() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.price,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Attraction extends Attraction {
  const _Attraction({required this.id, required this.title, required this.description, required this.country, required this.city, required this.address, required this.lat, required this.lng, required this.price, required this.currency, @JsonKey(name: 'discount_type') this.discountType, @JsonKey(name: 'discount_value') this.discountValue, @JsonKey(name: 'discount_title') this.discountTitle, @JsonKey(name: 'discount_valid_from') this.discountValidFrom, @JsonKey(name: 'discount_valid_to') this.discountValidTo, required final  List<String> images, final  Map<String, dynamic>? attributes, required this.status, this.isFavorite = false}): _images = images,_attributes = attributes,super._();
  factory _Attraction.fromJson(Map<String, dynamic> json) => _$AttractionFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String country;
@override final  String city;
@override final  String address;
@override final  double lat;
@override final  double lng;
@override final  double price;
@override final  String currency;
@override@JsonKey(name: 'discount_type') final  String? discountType;
@override@JsonKey(name: 'discount_value') final  double? discountValue;
@override@JsonKey(name: 'discount_title') final  String? discountTitle;
@override@JsonKey(name: 'discount_valid_from') final  String? discountValidFrom;
@override@JsonKey(name: 'discount_valid_to') final  String? discountValidTo;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  Map<String, dynamic>? _attributes;
@override Map<String, dynamic>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String status;
@override@JsonKey() final  bool isFavorite;

/// Create a copy of Attraction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttractionCopyWith<_Attraction> get copyWith => __$AttractionCopyWithImpl<_Attraction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttractionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Attraction&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.discountTitle, discountTitle) || other.discountTitle == discountTitle)&&(identical(other.discountValidFrom, discountValidFrom) || other.discountValidFrom == discountValidFrom)&&(identical(other.discountValidTo, discountValidTo) || other.discountValidTo == discountValidTo)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,country,city,address,lat,lng,price,currency,discountType,discountValue,discountTitle,discountValidFrom,discountValidTo,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_attributes),status,isFavorite]);

@override
String toString() {
  return 'Attraction(id: $id, title: $title, description: $description, country: $country, city: $city, address: $address, lat: $lat, lng: $lng, price: $price, currency: $currency, discountType: $discountType, discountValue: $discountValue, discountTitle: $discountTitle, discountValidFrom: $discountValidFrom, discountValidTo: $discountValidTo, images: $images, attributes: $attributes, status: $status, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$AttractionCopyWith<$Res> implements $AttractionCopyWith<$Res> {
  factory _$AttractionCopyWith(_Attraction value, $Res Function(_Attraction) _then) = __$AttractionCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String country, String city, String address, double lat, double lng, double price, String currency,@JsonKey(name: 'discount_type') String? discountType,@JsonKey(name: 'discount_value') double? discountValue,@JsonKey(name: 'discount_title') String? discountTitle,@JsonKey(name: 'discount_valid_from') String? discountValidFrom,@JsonKey(name: 'discount_valid_to') String? discountValidTo, List<String> images, Map<String, dynamic>? attributes, String status, bool isFavorite
});




}
/// @nodoc
class __$AttractionCopyWithImpl<$Res>
    implements _$AttractionCopyWith<$Res> {
  __$AttractionCopyWithImpl(this._self, this._then);

  final _Attraction _self;
  final $Res Function(_Attraction) _then;

/// Create a copy of Attraction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? country = null,Object? city = null,Object? address = null,Object? lat = null,Object? lng = null,Object? price = null,Object? currency = null,Object? discountType = freezed,Object? discountValue = freezed,Object? discountTitle = freezed,Object? discountValidFrom = freezed,Object? discountValidTo = freezed,Object? images = null,Object? attributes = freezed,Object? status = null,Object? isFavorite = null,}) {
  return _then(_Attraction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,discountTitle: freezed == discountTitle ? _self.discountTitle : discountTitle // ignore: cast_nullable_to_non_nullable
as String?,discountValidFrom: freezed == discountValidFrom ? _self.discountValidFrom : discountValidFrom // ignore: cast_nullable_to_non_nullable
as String?,discountValidTo: freezed == discountValidTo ? _self.discountValidTo : discountValidTo // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Event {

 String get id; String get title; String get description;@JsonKey(name: 'starts_at') String get startsAt;@JsonKey(name: 'ends_at') String get endsAt; String get country; String get city; String get address; double get lat; double get lng; double get price; String get currency;@JsonKey(name: 'discount_type') String? get discountType;@JsonKey(name: 'discount_value') double? get discountValue;@JsonKey(name: 'discount_title') String? get discountTitle;@JsonKey(name: 'discount_valid_from') String? get discountValidFrom;@JsonKey(name: 'discount_valid_to') String? get discountValidTo; List<String> get images; Map<String, dynamic>? get attributes; String get status; bool get isFavorite;
/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventCopyWith<Event> get copyWith => _$EventCopyWithImpl<Event>(this as Event, _$identity);

  /// Serializes this Event to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Event&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.discountTitle, discountTitle) || other.discountTitle == discountTitle)&&(identical(other.discountValidFrom, discountValidFrom) || other.discountValidFrom == discountValidFrom)&&(identical(other.discountValidTo, discountValidTo) || other.discountValidTo == discountValidTo)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,startsAt,endsAt,country,city,address,lat,lng,price,currency,discountType,discountValue,discountTitle,discountValidFrom,discountValidTo,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(attributes),status,isFavorite]);

@override
String toString() {
  return 'Event(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, country: $country, city: $city, address: $address, lat: $lat, lng: $lng, price: $price, currency: $currency, discountType: $discountType, discountValue: $discountValue, discountTitle: $discountTitle, discountValidFrom: $discountValidFrom, discountValidTo: $discountValidTo, images: $images, attributes: $attributes, status: $status, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $EventCopyWith<$Res>  {
  factory $EventCopyWith(Event value, $Res Function(Event) _then) = _$EventCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description,@JsonKey(name: 'starts_at') String startsAt,@JsonKey(name: 'ends_at') String endsAt, String country, String city, String address, double lat, double lng, double price, String currency,@JsonKey(name: 'discount_type') String? discountType,@JsonKey(name: 'discount_value') double? discountValue,@JsonKey(name: 'discount_title') String? discountTitle,@JsonKey(name: 'discount_valid_from') String? discountValidFrom,@JsonKey(name: 'discount_valid_to') String? discountValidTo, List<String> images, Map<String, dynamic>? attributes, String status, bool isFavorite
});




}
/// @nodoc
class _$EventCopyWithImpl<$Res>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._self, this._then);

  final Event _self;
  final $Res Function(Event) _then;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? startsAt = null,Object? endsAt = null,Object? country = null,Object? city = null,Object? address = null,Object? lat = null,Object? lng = null,Object? price = null,Object? currency = null,Object? discountType = freezed,Object? discountValue = freezed,Object? discountTitle = freezed,Object? discountValidFrom = freezed,Object? discountValidTo = freezed,Object? images = null,Object? attributes = freezed,Object? status = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as String,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,discountTitle: freezed == discountTitle ? _self.discountTitle : discountTitle // ignore: cast_nullable_to_non_nullable
as String?,discountValidFrom: freezed == discountValidFrom ? _self.discountValidFrom : discountValidFrom // ignore: cast_nullable_to_non_nullable
as String?,discountValidTo: freezed == discountValidTo ? _self.discountValidTo : discountValidTo // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Event].
extension EventPatterns on Event {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Event value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Event() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Event value)  $default,){
final _that = this;
switch (_that) {
case _Event():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Event value)?  $default,){
final _that = this;
switch (_that) {
case _Event() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description, @JsonKey(name: 'starts_at')  String startsAt, @JsonKey(name: 'ends_at')  String endsAt,  String country,  String city,  String address,  double lat,  double lng,  double price,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Event() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.startsAt,_that.endsAt,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.price,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description, @JsonKey(name: 'starts_at')  String startsAt, @JsonKey(name: 'ends_at')  String endsAt,  String country,  String city,  String address,  double lat,  double lng,  double price,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _Event():
return $default(_that.id,_that.title,_that.description,_that.startsAt,_that.endsAt,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.price,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description, @JsonKey(name: 'starts_at')  String startsAt, @JsonKey(name: 'ends_at')  String endsAt,  String country,  String city,  String address,  double lat,  double lng,  double price,  String currency, @JsonKey(name: 'discount_type')  String? discountType, @JsonKey(name: 'discount_value')  double? discountValue, @JsonKey(name: 'discount_title')  String? discountTitle, @JsonKey(name: 'discount_valid_from')  String? discountValidFrom, @JsonKey(name: 'discount_valid_to')  String? discountValidTo,  List<String> images,  Map<String, dynamic>? attributes,  String status,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _Event() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.startsAt,_that.endsAt,_that.country,_that.city,_that.address,_that.lat,_that.lng,_that.price,_that.currency,_that.discountType,_that.discountValue,_that.discountTitle,_that.discountValidFrom,_that.discountValidTo,_that.images,_that.attributes,_that.status,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Event extends Event {
  const _Event({required this.id, required this.title, required this.description, @JsonKey(name: 'starts_at') required this.startsAt, @JsonKey(name: 'ends_at') required this.endsAt, required this.country, required this.city, required this.address, required this.lat, required this.lng, required this.price, required this.currency, @JsonKey(name: 'discount_type') this.discountType, @JsonKey(name: 'discount_value') this.discountValue, @JsonKey(name: 'discount_title') this.discountTitle, @JsonKey(name: 'discount_valid_from') this.discountValidFrom, @JsonKey(name: 'discount_valid_to') this.discountValidTo, required final  List<String> images, final  Map<String, dynamic>? attributes, required this.status, this.isFavorite = false}): _images = images,_attributes = attributes,super._();
  factory _Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override@JsonKey(name: 'starts_at') final  String startsAt;
@override@JsonKey(name: 'ends_at') final  String endsAt;
@override final  String country;
@override final  String city;
@override final  String address;
@override final  double lat;
@override final  double lng;
@override final  double price;
@override final  String currency;
@override@JsonKey(name: 'discount_type') final  String? discountType;
@override@JsonKey(name: 'discount_value') final  double? discountValue;
@override@JsonKey(name: 'discount_title') final  String? discountTitle;
@override@JsonKey(name: 'discount_valid_from') final  String? discountValidFrom;
@override@JsonKey(name: 'discount_valid_to') final  String? discountValidTo;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  Map<String, dynamic>? _attributes;
@override Map<String, dynamic>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String status;
@override@JsonKey() final  bool isFavorite;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventCopyWith<_Event> get copyWith => __$EventCopyWithImpl<_Event>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Event&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.discountTitle, discountTitle) || other.discountTitle == discountTitle)&&(identical(other.discountValidFrom, discountValidFrom) || other.discountValidFrom == discountValidFrom)&&(identical(other.discountValidTo, discountValidTo) || other.discountValidTo == discountValidTo)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,startsAt,endsAt,country,city,address,lat,lng,price,currency,discountType,discountValue,discountTitle,discountValidFrom,discountValidTo,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_attributes),status,isFavorite]);

@override
String toString() {
  return 'Event(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, country: $country, city: $city, address: $address, lat: $lat, lng: $lng, price: $price, currency: $currency, discountType: $discountType, discountValue: $discountValue, discountTitle: $discountTitle, discountValidFrom: $discountValidFrom, discountValidTo: $discountValidTo, images: $images, attributes: $attributes, status: $status, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) _then) = __$EventCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description,@JsonKey(name: 'starts_at') String startsAt,@JsonKey(name: 'ends_at') String endsAt, String country, String city, String address, double lat, double lng, double price, String currency,@JsonKey(name: 'discount_type') String? discountType,@JsonKey(name: 'discount_value') double? discountValue,@JsonKey(name: 'discount_title') String? discountTitle,@JsonKey(name: 'discount_valid_from') String? discountValidFrom,@JsonKey(name: 'discount_valid_to') String? discountValidTo, List<String> images, Map<String, dynamic>? attributes, String status, bool isFavorite
});




}
/// @nodoc
class __$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(this._self, this._then);

  final _Event _self;
  final $Res Function(_Event) _then;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? startsAt = null,Object? endsAt = null,Object? country = null,Object? city = null,Object? address = null,Object? lat = null,Object? lng = null,Object? price = null,Object? currency = null,Object? discountType = freezed,Object? discountValue = freezed,Object? discountTitle = freezed,Object? discountValidFrom = freezed,Object? discountValidTo = freezed,Object? images = null,Object? attributes = freezed,Object? status = null,Object? isFavorite = null,}) {
  return _then(_Event(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as String,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,discountType: freezed == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String?,discountValue: freezed == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as double?,discountTitle: freezed == discountTitle ? _self.discountTitle : discountTitle // ignore: cast_nullable_to_non_nullable
as String?,discountValidFrom: freezed == discountValidFrom ? _self.discountValidFrom : discountValidFrom // ignore: cast_nullable_to_non_nullable
as String?,discountValidTo: freezed == discountValidTo ? _self.discountValidTo : discountValidTo // ignore: cast_nullable_to_non_nullable
as String?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
