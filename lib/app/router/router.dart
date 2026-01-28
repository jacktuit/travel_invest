import 'package:go_router/go_router.dart';
import 'package:travel_invest/data/cache/cache.dart';
import 'package:travel_invest/features/auth/pages/auth_page/build_login_page.dart';
import 'package:travel_invest/features/invite_freinds/page/qr_code_view.dart';
import 'package:travel_invest/features/profile/page/profile_page.dart';
import '../../features/about_us/pages/about_us_page.dart';
import '../../features/auth/pages/auth_page/build_email_otp_check.dart';
import '../../features/auth/pages/facebook_page.dart';
import '../../features/auth/pages/initial_auth_login.dart';
import '../../features/auth/pages/auth_page/build_sign_up_page.dart';
import '../../features/discount_cards/pages/discount_cards_page.dart';
import '../../features/home/pages/home_page.dart';
import '../../features/invite_freinds/page/invite_friend_page.dart';
import '../../features/make_partner/page/build_company_info_source_page.dart';
import '../../features/news_notifications/page/news_notifications_page.dart';
import '../../features/partners_location/page/partners_page.dart';
import 'routes.dart';

String _initialLocation() {
  final token = cache.getString("_tokenKey");
  print(token);
  String initialLocation = AppRoutes.initialAuthLogin;

  if (token != null) {
    initialLocation = AppRoutes.initialAuthLogin;
  }

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
      path: AppRoutes.qrCodeView,
      builder: (context, state) {
        return QrCodeView(extra: state.extra as QrCodeViewExtra);
      },
    ),
    GoRoute(
      path: AppRoutes.inviteFriendPage,
      builder: (context, state) {
        return InviteFriendPage();
      },
    ),
    GoRoute(
      path: AppRoutes.newsNotificationsPage,
      builder: (context, state) {
        return NewsNotificationsPage();
      },
    ),
    GoRoute(
      path: AppRoutes.companyInfoSourcePage,
      builder: (context, state) {
        return CompanyInfoSourcePage();
      },
    ),
    GoRoute(
      path: AppRoutes.profilePage,
      builder: (context, state) {
        return ProfilePage();
      },
    ),   GoRoute(
      path: AppRoutes.partnersPage,
      builder: (context, state) {
        return PartnersPage();
      },
    ),
    GoRoute(
      path: AppRoutes.facebookPage,
      builder: (context, state) {
        return FacebookPage();
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
      path: AppRoutes.loginPage,
      builder: (context, state) {
        return LoginPage(extra: state.extra as LoginPageExtra);
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
