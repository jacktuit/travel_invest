import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/common/utils/validators.dart';
import 'package:travel_invest/features/auth/notifiers/sign_up_notifier.dart';
import 'package:travel_invest/widgets/auth_widgets/sign_in_options_widget.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';
import 'package:travel_invest/widgets/inputs/my_password_field.dart';

class ContentSignUp extends HookConsumerWidget {
  const ContentSignUp({
    super.key,
    required this.onGoogleTap,
    required this.onFacebookTap,
    required this.onAppleTap,
    required this.email,
  });

  final void Function() onGoogleTap;
  final void Function() onFacebookTap;
  final void Function() onAppleTap;
  final String email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final signUpNotifiers = ref.watch(signUpNotifiersProvider);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

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
                'Create a password to set up your new account.',
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
              padding: EdgeInsets.fromLTRB(24, 17, 24, 0),
              child: MyPasswordField(
                controller: confirmPasswordController,
                labelText: 'Confirm Password',
                hintText: 'Re-enter your password',
                validator: (value) {
                  if (value != passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 36, 24, 0),
              child: MyButton(
                onPressed: () {
                  if (formKey.currentState?.validate() ?? false) {
                    ref
                        .read(signUpNotifiersProvider.notifier)
                        .signUp(
                          email: email,
                          password: passwordController.text,
                        );
                  }
                },
                text: 'Log In',
              ),
            ),

            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
