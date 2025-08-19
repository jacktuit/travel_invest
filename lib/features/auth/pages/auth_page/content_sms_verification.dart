import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pinput/pinput.dart';
import 'package:travel_invest/common/utils/utils.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';

import '../../notifiers/auth_notifiers.dart';

class ContentSmsVerification extends HookConsumerWidget {
  const ContentSmsVerification({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(24, 24, 51, 36),
              child: Text(
                'A verification code has been sent to this email address: abduraimbek@gmail.com',
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
              },
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focused,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24, bottom: 36),
            child: Text(
              'Resend (${Utils.beautifyLeftSeconds(leftSeconds.value)})',
              style: textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: MyButton(
              onPressed: () {
                if (pinValue.value.length == 4) {
                  ref.read(authPageNotifierProvider.notifier).goToSignUp();
                }
              },
              text: 'Verification',
              isDisabled: pinValue.value.length != 4,
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
