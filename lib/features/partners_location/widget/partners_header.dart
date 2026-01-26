import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';
import 'package:travel_invest/widgets/inputs/my_text_field.dart';

import '../notifier/partners_notifier.dart';

class PartnersHeader extends ConsumerWidget {
  const PartnersHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCat = ref.watch(placeProvider).selectedCategory;
    final notifier = ref.read(placeProvider.notifier);

    return Column(
      children: [
        16.vertical,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: MyTextField(
            onChanged: notifier.updateSearchQuery,
            hintText: 'Search for services and places',
          ),
        ),
        16.vertical,

        SizedBox(
          height: 75,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: PlaceCategory.values.length,
            itemBuilder: (context, index) {
              final category = PlaceCategory.values[index];
              final isSelected = selectedCat == category;

              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () => notifier.selectCategory(category),
                  child: Column(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF315230)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Icon(
                          _getIcon(category),
                          color: isSelected
                              ? Colors.white
                              : const Color(0xFF315230),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        category.displayName,
                        style: TextStyle(
                          fontSize: 12,
                          color: isSelected
                              ? const Color(0xFF315230)
                              : Colors.black54,
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  IconData _getIcon(PlaceCategory cat) {
    switch (cat) {
      case PlaceCategory.all:
        return Icons.grid_view_rounded;
      case PlaceCategory.attraction:
        return Icons.location_on_outlined;
      case PlaceCategory.restaurant:
        return Icons.restaurant;
      case PlaceCategory.hotel:
        return Icons.hotel;
      case PlaceCategory.carRental:
        return Icons.directions_car;
      case PlaceCategory.event:
        return Icons.event;
    }
  }
}
