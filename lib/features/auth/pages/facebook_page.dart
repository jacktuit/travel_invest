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
  final Logger _logger = Logger();

  // --- Facebook Login Funksiyasi ---
  Future<void> loginWithFacebook() async {
    try {
      // Login so'rovi
      final LoginResult result = await FacebookAuth.instance.login(
        permissions: ['email', 'public_profile'],
      );

      if (result.status == LoginStatus.success) {
        // Muvaffaqiyatli: AccessToken va foydalanuvchi ma'lumotlarini olish
        final AccessToken accessToken = result.accessToken!;
        final userData = await FacebookAuth.instance.getUserData();

        _logger.i("Facebook Login Success!");
        _logger.d("Token: ${accessToken.toString()}");
        _logger.d("User Data: $userData");

        showData([
          "Status: ${result.status}",
          "Token: ${accessToken.toString().substring(0, 10)}...",
          "Name: ${userData['name']}",
          "Email: ${userData['email']}"
        ]);

        // BU YERDA: Backend-ga token yuborish kodini yozasiz
      } else {
        _logger.w("Facebook Login Failed: ${result.status}");
        showData(["Status: ${result.status}", "Message: ${result.message}"]);
      }
    } catch (e, s) {
      _logger.e("Facebook Error", error: e, stackTrace: s);
      showData(["Error: $e"]);
    }
  }

  // --- Apple Login Funksiyasi ---
  Future<void> signInWithApple() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      _logger.i("Apple Login Success!");
      _logger.d({
        'email': appleCredential.email,
        'userIdentifier': appleCredential.userIdentifier,
      });

      showData(["Apple Login Success!", "ID: ${appleCredential.userIdentifier}"]);
    } catch (e, s) {
      _logger.e("Apple Error", error: e, stackTrace: s);
      showData(["Apple Error: $e"]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Social Login")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Apple Button
            SignInWithAppleButton(onPressed: signInWithApple),

            const SizedBox(height: 20),

            // Facebook Custom Button
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton.icon(
                onPressed: loginWithFacebook,
                icon: const Icon(Icons.facebook, color: Colors.white),
                label: const Text(
                  "Sign in with Facebook",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1877F2), // Facebook ko'k rangi
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showData(List<dynamic> data) {
    if (!mounted) return;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Natija"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [for (var item in data) Text(item.toString())],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            )
          ],
        );
      },
    );
  }
}