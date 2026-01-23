import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import 'package:travel_invest/common/helpers/alert_helper.dart';
import 'package:travel_invest/data/repositories/auth/auth_repository.dart';
import 'package:travel_invest/gen/assets.gen.dart';

import 'or_login_with_widget.dart';

class SignInOptionsWidget extends StatefulHookConsumerWidget {
  const SignInOptionsWidget({super.key});

  @override
  SignInOptionsWidgetState createState() => SignInOptionsWidgetState();
}

class SignInOptionsWidgetState extends ConsumerState<SignInOptionsWidget> {
  final _logger = Logger();
  final _signIn = GoogleSignIn.instance;
  String? email;
  int? smsId;

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

      await authRepository.signInWithApple(
        code: appleCredential.authorizationCode,
      );

      // if (mounted) {
      //   AlertHelper.showSnackBar(context, 'User signed in with Apple');
      //   context.go(AppRoutes.home);
      // }
    } catch (error) {
      if (mounted) {
        _logger.e(error);
        AlertHelper.showSnackBar(context, error.toString());
      }
    }
  }

  void _listener(GoogleSignInAuthenticationEvent event) {
    switch (event) {
      case GoogleSignInAuthenticationEventSignIn(
        :final GoogleSignInAccount user,
      ):
        if (user.authentication.idToken != null) {
          authRepository.signInWithGoogle(token: user.authentication.idToken!);
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        OrLoginWithWidget(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 15,
            children: [
              SignInOptionWidget(
                onTap: onGoogleTap,
                imagePath: Assets.png.google.path,
              ),
              if (Platform.isIOS)
                SignInOptionWidget(
                  onTap: onAppleTap,
                  imagePath: Assets.png.apple.path,
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class SignInOptionWidget extends StatelessWidget {
  const SignInOptionWidget({
    super.key,
    required this.onTap,
    required this.imagePath,
  });

  final void Function() onTap;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: theme.dividerColor),
          boxShadow: [
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 0,
              color: theme.shadowColor.withValues(alpha: .6),
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(9),
          child: Material(
            color: theme.cardColor,
            child: InkWell(
              onTap: onTap,
              child: Container(
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Image.asset(imagePath, width: 18, height: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
