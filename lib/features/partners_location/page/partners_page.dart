import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/app/theme/extensions.dart';
import '../notifier/partners_notifier.dart';
import '../widget/partner_empy_card.dart';
import '../widget/partners_header.dart';
import '../widget/universal_page.dart';


class PartnersPage extends ConsumerWidget {
  const PartnersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final partnersAsync = ref.watch(partnersProvider);
    final filteredData = ref.watch(filteredPartnersProvider);
    final myColors = context.myColors;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // backgroundColor: myColors.scaffoldBg,
        appBar: AppBar(
          surfaceTintColor: myColors.background,
          backgroundColor: myColors.background,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Location",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        body: partnersAsync.when(
          data: (data) {
            return Column(
              children: [
                const PartnersHeader(),
                Expanded(
                  child: filteredData.isEmpty
                      ? const EmptyPartnersWidget()
                      : RefreshIndicator(
                    onRefresh: () =>
                        ref.read(partnersProvider.notifier).refresh(),
                    child: ListView.builder(
                      padding: const EdgeInsets.only(bottom: 24),
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
                ),
              ],
            );
          },
          error: (error, stackTrace) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 64, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(error.toString()),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () =>
                        ref.read(partnersProvider.notifier).refresh(),
                    child: const Text('Qayta urinish'),
                  ),
                ],
              ),
            );
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}