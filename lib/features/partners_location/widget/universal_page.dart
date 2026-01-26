import 'package:flutter/material.dart';
import 'package:travel_invest/features/partners_location/widget/universal_card.dart';

import '../model/partners_model.dart';
import '../notifier/partners_notifier.dart';

class UniversalPlacePage extends StatelessWidget {
  final PlaceCategory category;
  final String title;
  final List<PlaceModel> places; // <-- Tayyor list keladi

  const UniversalPlacePage({
    super.key,
    required this.category,
    required this.title,
    required this.places,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF315230),
            ),
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: places.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              return UniversalPlaceCard(
                place: places[index],
                category: category,
              );
            },
          ),
        ),
      ],
    );
  }
}
