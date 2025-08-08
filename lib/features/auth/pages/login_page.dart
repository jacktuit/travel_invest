import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

class LoginPage extends StatefulHookConsumerWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _signIn = GoogleSignIn.instance;
  final _logger = Logger();

  StreamSubscription<GoogleSignInAuthenticationEvent>?
  _googleSignInEventsSubscription;

  String _clientId() {
    return kDebugMode
        ? '657913602018-vk0qfqc8cci7th7mgavo34vpq2jc950t.apps.googleusercontent.com'
        : '657913602018-iu54b6h3f3ut40v18u2kp7v9tmld3gb0.apps.googleusercontent.com';
  }

  String _serverClientId() {
    return '657913602018-6pjkhd5anl02ae4vn5t47mcd6s1s3p5a.apps.googleusercontent.com';
  }

  @override
  void initState() {
    super.initState();
  }

  void _startGoogleSignIn() {
    try {
      unawaited(
        _signIn
            .initialize(
              clientId: _clientId(),
              serverClientId: _serverClientId(),
            )
            .then((_) {
              _googleSignInEventsSubscription =
                  _signIn.authenticationEvents.listen(_listener)
                    ..onError((err) {
                      _logger.e(err);
                    });

              _signIn.attemptLightweightAuthentication(
                reportAllExceptions: true,
              );
            }),
      );
    } catch (error, stackTrace) {
      _logger.e([error, stackTrace]);
    }
  }

  void _listener(GoogleSignInAuthenticationEvent event) {
    switch (event) {
      case GoogleSignInAuthenticationEventSignIn(
        :final GoogleSignInAccount user,
      ):
        _logger.i([user.authentication.idToken, user]);
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
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: _startGoogleSignIn,
          child: Text('Sign in with Google'),
        ),
      ),
    );
  }
}
