import 'dart:async';
import 'dart:io';

import 'package:animations/animations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:travel_invest/app/router/routes.dart';
import 'package:travel_invest/common/helpers/alert_helper.dart';
import 'package:travel_invest/data/fetchy/fetchy.dart';

import '../notifiers/auth_notifiers.dart';
import 'auth_page/build_head.dart';
import 'auth_page/build_privacy_policy.dart';
import 'auth_page/content_initial.dart';
import 'auth_page/content_password.dart';
import 'auth_page/content_sign_up.dart';
import 'auth_page/content_sms_verification.dart';

class AuthPage extends StatefulHookConsumerWidget {
  const AuthPage({super.key});

  @override
  ConsumerState<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends ConsumerState<AuthPage> {
  final _logger = Logger();
  final _signIn = GoogleSignIn.instance;

  StreamSubscription<GoogleSignInAuthenticationEvent>?
  _googleSignInEventsSubscription;

  String _clientIdForGoogleSignIn() {
    if (Platform.isAndroid) {
      return kDebugMode
          ? '657913602018-vk0qfqc8cci7th7mgavo34vpq2jc950t.apps.googleusercontent.com'
          : '657913602018-iu54b6h3f3ut40v18u2kp7v9tmld3gb0.apps.googleusercontent.com';
    } else if (Platform.isIOS) {
      return '657913602018-e6l4ohplpt7bi0o3jmps07se7n9cjleg.apps.googleusercontent.com';
    } else {
      throw Exception('Google Sign-In is not supported on this platform.');
    }
  }

  String _serverClientId() {
    return '657913602018-6pjkhd5anl02ae4vn5t47mcd6s1s3p5a.apps.googleusercontent.com';
  }

  Future<void> onGoogleTap() async {
    try {
      unawaited(
        _signIn
            .initialize(
              clientId: _clientIdForGoogleSignIn(),
              serverClientId: _serverClientId(),
            )
            .then((_) {
              _googleSignInEventsSubscription =
                  _signIn.authenticationEvents.listen(_listener)
                    ..onError((err) {
                      _logger.e(err);
                    });

              if (Platform.isAndroid) {
                _signIn.attemptLightweightAuthentication(
                  reportAllExceptions: true,
                );
              } else if (Platform.isIOS) {
                _signIn.authenticate();
              }
            }),
      );
    } catch (error, stackTrace) {
      _logger.e([error, stackTrace]);
    }
  }

  Future<void> onFacebookTap() async {}

  Future<void> onAppleTap() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      _logger.e([
        appleCredential.authorizationCode,
        appleCredential.identityToken,
        appleCredential.userIdentifier,
      ]);

      fetchy.post('/services/platon-auth/api/oauth2-validate?method=apple', {
        'code': appleCredential.authorizationCode,
      }, log: true);

      if (mounted) {
        AlertHelper.showSnackBar(context, 'User signed in with Apple');
        context.go(AppRoutes.home);
      }
    } catch (error) {
      if (mounted) {
        AlertHelper.showSnackBar(context, error.toString());
      }
    }
  }

  void _listener(GoogleSignInAuthenticationEvent event) {
    switch (event) {
      case GoogleSignInAuthenticationEventSignIn(
        :final GoogleSignInAccount user,
      ):
        _logger.i([user.authentication.idToken, user]);

        if (mounted) {
          AlertHelper.showSnackBar(
            context,
            'User signed in with Google: ${user.email}',
          );
          context.go(AppRoutes.home);
        }

        break;

      case GoogleSignInAuthenticationEventSignOut():
        _logger.i('User signed out');
        break;
    }
  }

  @override
  void dispose() {
    _googleSignInEventsSubscription?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final state = ref.watch(authPageNotifierProvider);

    return PopScope(
      canPop: state.$2.isBackPressAvailable,
      onPopInvokedWithResult: (didPop, result) {
        ref.read(authPageNotifierProvider.notifier).onBackPressed();
      },
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: true,
          backgroundColor: theme.cardColor,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.light,
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BuildHead(),
              Expanded(
                child: PageTransitionSwitcher(
                  duration: Duration(
                    milliseconds: AuthPageState.animationDuration,
                  ),
                  reverse: state.$2.isReverseAnimation(state.$1),
                  transitionBuilder:
                      (child, primaryAnimation, secondaryAnimation) {
                        return SharedAxisTransition(
                          animation: primaryAnimation,
                          secondaryAnimation: secondaryAnimation,
                          transitionType: SharedAxisTransitionType.horizontal,
                          fillColor: Colors.transparent,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: child,
                          ),
                        );
                      },
                  child: state.$2.when(
                    initial: () => ContentInitial(
                      onGoogleTap: onGoogleTap,
                      onFacebookTap: onFacebookTap,
                      onAppleTap: onAppleTap,
                    ),
                    password: () => ContentPassword(
                      onGoogleTap: onGoogleTap,
                      onFacebookTap: onFacebookTap,
                      onAppleTap: onAppleTap,
                    ),
                    smsVerification: () => const ContentSmsVerification(),
                    signUp: () => ContentSignUp(
                      onGoogleTap: onGoogleTap,
                      onFacebookTap: onFacebookTap,
                      onAppleTap: onAppleTap,
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: const BuildPrivacyPolicy(),
        ),
      ),
    );
  }
}
