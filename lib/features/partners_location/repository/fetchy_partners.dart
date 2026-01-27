
import 'package:travel_invest/data/fetchy/fetchy.dart';

import '../model/partners_model.dart';

class FetchPartnersRepository {
  Future<PartnersResponse> fetchPartners() async {
    final response = await fetchy.get("/services/platon-core/api/public/data", log: true);
    final data = response['data'];

    return PartnersResponse(
      hotels: _parseList<Hotel>(
        data['hotels'],
            (json) => Hotel.fromJson(json),
      ),
      carRentals: _parseList<CarRental>(
        data['car_rentals'],
            (json) => CarRental.fromJson(json),
      ),
      restaurants: _parseList<Restaurant>(
        data['restaurants'],
            (json) => Restaurant.fromJson(json),
      ),
      attractions: _parseList<Attraction>(
        data['attractions'],
            (json) => Attraction.fromJson(json),
      ),
      events: _parseList<Event>(
        data['events'],
            (json) => Event.fromJson(json),
      ),
    );
  }

  List<T> _parseList<T>(
      dynamic list,
      T Function(Map<String, dynamic>) fromJson,
      ) {
    if (list == null) return [];

    final result = <T>[];
    for (final item in list) {
      try {
        result.add(fromJson(item as Map<String, dynamic>));
      } catch (e) {
        print('Error parsing ${T.toString()}: $e');
      }
    }
    return result;
  }
}

final fetchPartnersRepository = FetchPartnersRepository();