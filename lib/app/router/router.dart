import 'package:go_router/go_router.dart';

import '../../features/about_us/pages/about_us_page.dart';
import '../../features/auth/pages/auth_page.dart';
import '../../features/discount_cards/pages/discount_cards_page.dart';
import '../../features/home/pages/home_page.dart';
import 'routes.dart';

String _initialLocation() {
  String initialLocation = AppRoutes.home;

  return initialLocation;
}

Object? _initialExtra() {
  Object? initialExtra;

  return initialExtra;
}

final router = GoRouter(
  initialLocation: _initialLocation(),
  initialExtra: _initialExtra(),
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) {
        return HomePage();
      },
    ),
    GoRoute(
      path: AppRoutes.auth,
      builder: (context, state) {
        return AuthPage();
      },
    ),
    GoRoute(
      path: AppRoutes.aboutUs,
      builder: (context, state) {
        return AboutUsPage();
      },
    ),
    GoRoute(
      path: AppRoutes.discountCards,
      builder: (context, state) {
        return DiscountCardsPage();
      },
    ),
  ],
);
