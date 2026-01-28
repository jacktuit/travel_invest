import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/features/home/notifiers/navigation_notifier.dart';
import 'package:travel_invest/gen/assets.gen.dart';

import '../../make_partner/page/build_business_type.dart';
import '../../news_notifications/page/news_notifications_page.dart';
import '../../partners_location/page/partners_page.dart';
import '../../travel_home/page/travel_home_page.dart';
import 'home_page/build_navigation.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navigationProvider);

    return PopScope(
      canPop: index == 0,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          ref.read(navigationProvider.notifier).change(0);
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xffF0F1F3),
        body: IndexedStack(
          index: index,
          children: [
            TravelHomePage(),
            PartnersPage(),
            NewsNotificationsPage(),
            BuildBusinessType(),
          ],
        ),
        bottomNavigationBar: BuildNavigation(),
      ),
    );
  }
}
