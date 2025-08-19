import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:logger/logger.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class FacebookPage extends StatefulWidget {
  const FacebookPage({super.key});

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  Future<void> login() async {
    try {
      LoginResult result = await FacebookAuth.instance.login(
        loginBehavior: LoginBehavior.nativeOnly,
        loginTracking: LoginTracking.enabled,
      );

      showData([result.status, result.message, result.accessToken]);
    } catch (e, s) {
      showData([e, s]);
    }
  }

  Future<void> signInWithApple() async {
    try {
      AuthorizationCredentialAppleID appleCredential =
          await SignInWithApple.getAppleIDCredential(
            scopes: [
              AppleIDAuthorizationScopes.email,
              AppleIDAuthorizationScopes.fullName,
            ],
          );

      Logger().e({
        'state': appleCredential.state,
        'authorizationCode': appleCredential.authorizationCode,
        'email': appleCredential.email,
        'familyName': appleCredential.familyName,
        'givenName': appleCredential.givenName,
        'userIdentifier': appleCredential.userIdentifier,
        'identityToken': appleCredential.identityToken,
      });

      CredentialState appleCredentialState =
          await SignInWithApple.getCredentialState(
            appleCredential.userIdentifier!,
          );

      Logger().e([appleCredentialState]);

      AuthorizationCredentialPassword appleKeychainCredential =
          await SignInWithApple.getKeychainCredential();

      Logger().e([
        appleKeychainCredential.username,
        appleKeychainCredential.password,
      ]);
    } catch (e, s) {
      Logger().e([e, s]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SignInWithAppleButton(onPressed: signInWithApple)),
    );
  }

  void showData(List<dynamic> data) {
    if (!mounted) return;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            spacing: 20,
            children: [for (var item in data) Text(item.toString())],
          ),
        );
      },
    );
  }
}
