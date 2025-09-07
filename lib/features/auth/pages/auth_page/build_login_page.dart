import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';
import 'package:travel_invest/common/helpers/alert_helper.dart';
import 'package:travel_invest/features/auth/notifiers/login_notifiers.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';
import '../../../../common/utils/validators.dart';
import '../../../../widgets/inputs/my_password_field.dart';
import 'build_head_email_otp_check.dart';

final class LoginPageExtra {
  final String email;

  LoginPageExtra({required this.email});
}

class LoginPage extends HookConsumerWidget {
  final LoginPageExtra extra;

  const LoginPage({super.key, required this.extra});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final passwordController = useTextEditingController();
    useListenable(passwordController);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final loginNotifiers = ref.watch(loginNotifiersProvider);

    ref.listen(loginNotifiersProvider, (previous, next) {
      next.when(
        data: (data) {},
        error: (error, stackTrace) {
          AlertHelper.showSnackBar(context, error.toString());
        },
        loading: () {},
      );
    });

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const BuildHeadEmail(title: "Enter your password"),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 24, 51, 20),
                    child: Text(
                      'Enter your password for login  ${extra.email} account',
                      style: textTheme.bodySmall,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: MyPasswordField(
                    controller: passwordController,
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    validator: (value) => Validators.validatePassword(value),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: MyButton(
                    isDisabled: passwordController.text.isEmpty,
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        ref
                            .read(loginNotifiersProvider.notifier)
                            .login(
                              email: extra.email,
                              password: passwordController.text,
                            );
                      }
                    },
                    text: 'Login',
                    isLoading: loginNotifiers.isLoading,
                  ),
                ),
                16.vertical,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
