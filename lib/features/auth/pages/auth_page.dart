import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../notifiers/auth_notifiers.dart';
import 'auth_page/build_head.dart';
import 'auth_page/build_privacy_policy.dart';
import 'auth_page/content_initial.dart';
import 'auth_page/content_password.dart';
import 'auth_page/content_sign_up.dart';
import 'auth_page/content_sms_verification.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    initial: () => const ContentInitial(),
                    password: () => const ContentPassword(),
                    smsVerification: () => const ContentSmsVerification(),
                    signUp: () => const ContentSignUp(),
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
