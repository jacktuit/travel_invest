// partners_page.dart

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/app/theme/extensions.dart';
import '../../../app/theme/colors.dart';
import '../notifier/partners_notifier.dart';
import '../widget/partners_header.dart';
import '../widget/universal_page.dart';

class PartnersPage extends ConsumerWidget {
  const PartnersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final placeState = ref.watch(placeProvider);
    final filteredData = placeState.filteredPlaces;

    final myColors = context.myColors;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: myColors.background,
          backgroundColor: myColors.background,
          elevation: 0,
          centerTitle: true,

          title: Text(
            "Location",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),

        body: Column(
          children: [
            const PartnersHeader(),
            Expanded(
              child: filteredData.isEmpty
                  ? const Center(child: Text("Hech narsa topilmadi 😕"))
                  : ListView.builder(
                      padding: EdgeInsets.only(bottom: 24),
                      itemCount: filteredData.length,
                      itemBuilder: (context, index) {
                        final category = filteredData.keys.elementAt(index);
                        final places = filteredData[category]!;

                        return UniversalPlacePage(
                          category: category,
                          title: category.displayName,
                          places: places,
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
