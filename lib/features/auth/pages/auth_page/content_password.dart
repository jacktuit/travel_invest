import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/common/utils/validators.dart';
import 'package:travel_invest/widgets/auth_widgets/remember_me_and_forgot_password.dart';
import 'package:travel_invest/widgets/auth_widgets/sign_in_options_widget.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';
import 'package:travel_invest/widgets/inputs/my_password_field.dart';

import '../../notifiers/auth_notifiers.dart';

class ContentPassword extends HookConsumerWidget {
  const ContentPassword({
    super.key,
    required this.onGoogleTap,
    required this.onFacebookTap,
    required this.onAppleTap,
  });

  final void Function() onGoogleTap;
  final void Function() onFacebookTap;
  final void Function() onAppleTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final formKey = useMemoized(() => GlobalKey<FormState>());
    final passwordController = useTextEditingController();
    final isChecked = useState(false);

    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 24),
              child: Text(
                'Please enter your password.',
                style: textTheme.bodySmall,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 37, 24, 0),
              child: MyPasswordField(
                controller: passwordController,
                labelText: 'Password',
                hintText: 'Enter your password',
                validator: (value) => Validators.validatePassword(value),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: RememberMeAndForgotPassword(
                isChecked: isChecked.value,
                onChanged: () {
                  isChecked.value = !isChecked.value;
                },
                onForgotPasswordPressed: () {
                  // Handle forgot password logic here
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 36, 24, 0),
              child: MyButton(
                onPressed: () {
                  if (formKey.currentState?.validate() ?? false) {
                    ref
                        .read(authPageNotifierProvider.notifier)
                        .goToSmsVerification();
                  }
                },
                text: 'Log In',
              ),
            ),
            SignInOptionsWidget(
              onGoogleTap: onGoogleTap,
              onFacebookTap: onFacebookTap,
              onAppleTap: onAppleTap,
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
