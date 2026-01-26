import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../gen/assets.gen.dart';
import '../model/partners_model.dart';

part 'partners_notifier.g.dart';

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

class PlaceState {
  final Map<PlaceCategory, List<PlaceModel>> allPlaces;
  final String searchQuery;
  final PlaceCategory selectedCategory;

  PlaceState({
    required this.allPlaces,
    this.searchQuery = '',
    this.selectedCategory = PlaceCategory.all,
  });

  PlaceState copyWith({
    Map<PlaceCategory, List<PlaceModel>>? allPlaces,
    String? searchQuery,
    PlaceCategory? selectedCategory,
  }) {
    return PlaceState(
      allPlaces: allPlaces ?? this.allPlaces,
      searchQuery: searchQuery ?? this.searchQuery,
      selectedCategory: selectedCategory ?? this.selectedCategory,
    );
  }

  Map<PlaceCategory, List<PlaceModel>> get filteredPlaces {
    final results = <PlaceCategory, List<PlaceModel>>{};

    allPlaces.forEach((category, places) {
      if (selectedCategory != PlaceCategory.all &&
          category != selectedCategory) {
        return;
      }
      final filteredList = places.where((place) {
        final searchTarget = "${place.name} ${place.location}".toLowerCase();
        return searchTarget.contains(searchQuery.toLowerCase());
      }).toList();

      if (filteredList.isNotEmpty) {
        results[category] = filteredList;
      }
    });

    return results;
  }
}

@riverpod
class PlaceNotifier extends _$PlaceNotifier {
  @override
  PlaceState build() {
    return PlaceState(allPlaces: _initialData);
  }

  void updateSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void selectCategory(PlaceCategory category) {
    state = state.copyWith(selectedCategory: category);
  }

  void toggleFavorite(PlaceCategory category, String id) {
    final categoryPlaces = state.allPlaces[category] ?? [];
    final updatedList = [
      for (final place in categoryPlaces)
        if (place.id == id)
          place.copyWith(isFavorite: !place.isFavorite)
        else
          place,
    ];

    state = state.copyWith(
      allPlaces: {...state.allPlaces, category: updatedList},
    );
  }

  static final Map<PlaceCategory, List<PlaceModel>> _initialData = {
    PlaceCategory.attraction: [
      PlaceModel(
        id: 'attr_1',
        name: 'Registan',
        location: 'Samarkand, Uzbekistan',
        distance: '12 km',
        discount: '25% discount',
        imageUrls: [
          Assets.jpg.registonone.path,
          Assets.jpg.registontwo.path,
          Assets.jpg.registonthree.path,
        ],
      ),
      PlaceModel(
        id: 'attr_2',
        name: 'Ichan-Kala',
        location: 'Khiva, Uzbekistan',
        distance: '12 km',
        isFavorite: true,
        imageUrls: [Assets.jpg.khiva.path, Assets.jpg.khivatwo.path],
      ),
    ],
    PlaceCategory.restaurant: [
      PlaceModel(
        id: 'rest_1',
        name: 'Plov Center',
        location: 'Tashkent, Uzbekistan',
        distance: '5 km',
        discount: '15% discount',
        imageUrls: [
          Assets.jpg.restaurant.path,
          Assets.jpg.registonthree.path,

        ],
      ),
    ],
    PlaceCategory.hotel: [
      PlaceModel(
        id: 'hotel_1',
        name: 'Hyatt Regency',
        location: 'Tashkent, Uzbekistan',
        distance: '3 km',
        discount: '20% discount',
        imageUrls: [
          Assets.jpg.hotel.path,
          Assets.jpg.hoteltwo.path,
          Assets.jpg.hotelthree.path,
        ],
      ),
    ],
    PlaceCategory.carRental: [
      PlaceModel(
        id: 'car_1',
        name: 'Luxury Car Rental',
        location: 'Tashkent, Uzbekistan',
        distance: '30 km',
        discount: '10% discount',
        imageUrls: [Assets.jpg.lam.path, Assets.jpg.lambo.path],
      ),
    ],
    PlaceCategory.event: [
      PlaceModel(
        id: 'event_1',
        name: 'Silk Road Festival',
        location: 'Samarkand, Uzbekistan',
        distance: '15 km',
        imageUrls: [Assets.jpg.navruzone.path, Assets.jpg.risunok2.path],
      ),
    ],
  };
}
