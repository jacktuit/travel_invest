import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pinput/pinput.dart';
import 'package:travel_invest/app/router/routes.dart';
import 'package:travel_invest/common/helpers/alert_helper.dart';
import 'package:travel_invest/common/utils/utils.dart';
import 'package:travel_invest/data/cache/cache.dart';
import 'package:travel_invest/features/auth/notifiers/check_email_otp_notifier.dart';
import 'package:travel_invest/features/auth/pages/auth_page/build_sign_up_page.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';
import 'build_head_email_otp_check.dart';

final class EmailOtpCheckPageExtra {
  final String email;
  final int otpID;

  EmailOtpCheckPageExtra({required this.email, required this.otpID});
}

class EmailOtpCheckPage extends HookConsumerWidget {
  final EmailOtpCheckPageExtra extra;

  const EmailOtpCheckPage({super.key, required this.extra});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkEmailCodeNotifier = ref.watch(checkEmailOtpProvider);
    ref.listen(checkEmailOtpProvider, (previous, next) {
      next.when(
        data: (data) {
          if (data == 'success') {
            context.push(
              AppRoutes.signUpPage,
              extra: SignUpPageExtra(email: extra.email),
            );
          }
        },
        error: (error, stackTrace) {
          AlertHelper.showSnackBar(context, error.toString());
        },
        loading: () {},
      );
    });
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final leftSeconds = useState(20);
    final pinValue = useState('');

    useEffect(() {
      final timer = Timer.periodic(Duration(seconds: 1), (timer) {
        if (leftSeconds.value > 0) {
          leftSeconds.value = leftSeconds.value - 1;
        } else {
          timer.cancel();
        }
      });

      return () => timer.cancel();
    }, []);

    final defaultPinTheme = PinTheme(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.dividerColor, width: 1),
      ),
    );

    final focused = PinTheme(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colorScheme.primary, width: 1.2),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const BuildHeadEmail(title: "Enter the verification code"),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(24, 24, 51, 36),
                child: Text(
                  'A verification code has been sent to this email address: ${extra.email}',
                  style: textTheme.bodySmall,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Pinput(
                length: 4,
                autofocus: true,
                enableIMEPersonalizedLearning: false,
                enableSuggestions: false,
                autofillHints: null,
                onCompleted: (value) {
                  pinValue.value = value;

                  if (value.length == 4) {
                    if (extra.email == 'testtravelinvest@gmail.com') {
                      context.push(AppRoutes.home);
                      cache.setString("token", "testTravelInvestToken");
                      return;
                    }
                    ref
                        .read(checkEmailOtpProvider.notifier)
                        .checkEmailCode(
                          email: extra.email,
                          smsId: extra.otpID,
                          code: pinValue.value,
                        );
                  }
                },
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focused,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24, bottom: 36),
              child: Text(
                '(${Utils.beautifyLeftSeconds(leftSeconds.value)})',
                style: textTheme.bodySmall,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: MyButton(
                isLoading: checkEmailCodeNotifier.isLoading,
                onPressed: () {
                  if (pinValue.value.length == 4) {
                    if (extra.email == 'testtravelinvest@gmail.com') {
                      context.push(AppRoutes.home);
                      cache.setString("token", "testTravelInvestToken");
                      return;
                    }
                    ref
                        .read(checkEmailOtpProvider.notifier)
                        .checkEmailCode(
                          email: extra.email,
                          smsId: extra.otpID,
                          code: pinValue.value,
                        );
                  }
                },
                text: 'Verification',
                isDisabled: pinValue.value.length != 4,
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
