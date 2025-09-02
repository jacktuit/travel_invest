import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../app/router/routes.dart';
import '../../../../common/helpers/alert_helper.dart';
import '../../../../common/utils/validators.dart';
import '../../../../widgets/buttons/my_button.dart';
import '../../../../widgets/inputs/my_password_field.dart';
import '../../notifiers/sign_up_notifier.dart';
import 'build_head_email_otp_check.dart';

final class SignUpPageExtra {
  final String email;

  SignUpPageExtra({required this.email});
}

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key, required this.extra});

  final SignUpPageExtra extra;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final signUpNotifiers = ref.watch(signUpNotifiersProvider);
    ref.listen(signUpNotifiersProvider, (previous, next) {
      next.when(
        data: (data) {
          if (data is String) {
            context.go(AppRoutes.home);
          }
        },
        error: (error, stackTrace) {
          AlertHelper.showSnackBar(context, error.toString());
        },
        loading: () {},
      );
    });
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              BuildHeadEmail(title: 'Create a new account'),
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
                  autoFocus: true,
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
                  isDisabled: confirmPasswordController != passwordController,
                  isLoading: signUpNotifiers.isLoading,
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      ref
                          .read(signUpNotifiersProvider.notifier)
                          .signUp(
                            email: extra.email,
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
      ),
    );
  }
}
