import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/partners_model.dart';
import '../repository/fetchy_partners.dart';


part 'partners_notifier.g.dart';

@riverpod
class PartnersNotifier extends _$PartnersNotifier {
  @override
  FutureOr<PartnersResponse> build() async {
    return await fetchPartnersRepository.fetchPartners();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await fetchPartnersRepository.fetchPartners();
    });
  }

  void toggleHotelFavorite(String id) {
    state.whenData((data) {
      final updated = data.hotels.map((h) {
        return h.id == id ? h.copyWith(isFavorite: !h.isFavorite) : h;
      }).toList();

      state = AsyncValue.data(data.copyWith(hotels: updated));
    });
  }

  void toggleCarRentalFavorite(String id) {
    state.whenData((data) {
      final updated = data.carRentals.map((c) {
        return c.id == id ? c.copyWith(isFavorite: !c.isFavorite) : c;
      }).toList();

      state = AsyncValue.data(data.copyWith(carRentals: updated));
    });
  }

  void toggleRestaurantFavorite(String id) {
    state.whenData((data) {
      final updated = data.restaurants.map((r) {
        return r.id == id ? r.copyWith(isFavorite: !r.isFavorite) : r;
      }).toList();

      state = AsyncValue.data(data.copyWith(restaurants: updated));
    });
  }

  void toggleAttractionFavorite(String id) {
    state.whenData((data) {
      final updated = data.attractions.map((a) {
        return a.id == id ? a.copyWith(isFavorite: !a.isFavorite) : a;
      }).toList();

      state = AsyncValue.data(data.copyWith(attractions: updated));
    });
  }

  void toggleEventFavorite(String id) {
    state.whenData((data) {
      final updated = data.events.map((e) {
        return e.id == id ? e.copyWith(isFavorite: !e.isFavorite) : e;
      }).toList();

      state = AsyncValue.data(data.copyWith(events: updated));
    });
  }
}

@riverpod
class PartnersFilter extends _$PartnersFilter {
  @override
  ({String query, PlaceCategory category}) build() {
    return (query: '', category: PlaceCategory.all);
  }

  void updateQuery(String query) {
    state = (query: query, category: state.category);
  }

  void selectCategory(PlaceCategory category) {
    state = (query: state.query, category: category);
  }
}

@riverpod
Map<PlaceCategory, List<dynamic>> filteredPartners(Ref ref) {
  final partnersAsync = ref.watch(partnersProvider);
  final filter = ref.watch(partnersFilterProvider);

  return partnersAsync.when(
    data: (data) {
      final results = <PlaceCategory, List<dynamic>>{};
      final query = filter.query.toLowerCase();

      bool matchesSearch(String title, String city, String address) {
        final target = '$title $city $address'.toLowerCase();
        return target.contains(query);
      }

      if (filter.category == PlaceCategory.all ||
          filter.category == PlaceCategory.attraction) {
        final filtered = data.attractions
            .where((a) => matchesSearch(a.title, a.city, a.address))
            .toList();
        if (filtered.isNotEmpty) {
          results[PlaceCategory.attraction] = filtered;
        }
      }

      if (filter.category == PlaceCategory.all ||
          filter.category == PlaceCategory.restaurant) {
        final filtered = data.restaurants
            .where((r) => matchesSearch(r.title, r.city, r.address))
            .toList();
        if (filtered.isNotEmpty) {
          results[PlaceCategory.restaurant] = filtered;
        }
      }

      if (filter.category == PlaceCategory.all ||
          filter.category == PlaceCategory.hotel) {
        final filtered = data.hotels
            .where((h) => matchesSearch(h.title, h.city, h.address))
            .toList();
        if (filtered.isNotEmpty) {
          results[PlaceCategory.hotel] = filtered;
        }
      }

      if (filter.category == PlaceCategory.all ||
          filter.category == PlaceCategory.carRental) {
        final filtered = data.carRentals
            .where((c) => matchesSearch(c.title, c.city, c.address))
            .toList();
        if (filtered.isNotEmpty) {
          results[PlaceCategory.carRental] = filtered;
        }
      }

      if (filter.category == PlaceCategory.all ||
          filter.category == PlaceCategory.event) {
        final filtered = data.events
            .where((e) => matchesSearch(e.title, e.city, e.address))
            .toList();
        if (filtered.isNotEmpty) {
          results[PlaceCategory.event] = filtered;
        }
      }

      return results;
    },
    loading: () => {},
    error: (_, _) => {},
  );
}