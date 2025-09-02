import 'package:go_router/go_router.dart';

import '../../features/about_us/pages/about_us_page.dart';
import '../../features/auth/pages/auth_page.dart';
import '../../features/auth/pages/email_otp_check/page/email_otp_check.dart';
import '../../features/auth/pages/initial_auth_login/page/initial_auth_login.dart';
import '../../features/auth/pages/sign_up/page/sign_up_page.dart';
import '../../features/discount_cards/pages/discount_cards_page.dart';
import '../../features/home/pages/home_page.dart';
import 'routes.dart';

String _initialLocation() {
  String initialLocation = AppRoutes.initialAuthLogin;

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
    // GoRoute(
    //   path: AppRoutes.auth,
    //   builder: (context, state) {
    //     return AuthPage();
    //   },
    // ),
    GoRoute(
      path: AppRoutes.aboutUs,
      builder: (context, state) {
        return AboutUsPage();
      },
    ),
    GoRoute(
      path: AppRoutes.initialAuthLogin,
      builder: (context, state) {
        return InitialAuthLogin();
      },
    ),
    GoRoute(
      path: AppRoutes.emailOtpCheckPage,
      builder: (context, state) {
        return EmailOtpCheckPage(extra: state.extra as EmailOtpCheckPageExtra);
      },
    ),
    GoRoute(
      path: AppRoutes.discountCards,
      builder: (context, state) {
        return DiscountCardsPage();
      },
    ),
    GoRoute(
      path: AppRoutes.signUpPage,
      builder: (context, state) {
        return SignUpPage(extra: state.extra as SignUpPageExtra);
      },
    ),
  ],
);
