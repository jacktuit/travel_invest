import 'package:go_router/go_router.dart';

import '../../features/auth/pages/auth_page.dart';
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
  ],
);
