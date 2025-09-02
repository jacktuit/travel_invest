import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';
import '../../../../../common/utils/validators.dart';
import '../../../../../widgets/inputs/my_password_field.dart';
import '../../auth_page/build_head_email_otp_check.dart';

final class LoginPageExtra {
  final String email;

  LoginPageExtra({required this.email});
}

class LoginPage extends HookConsumerWidget {
  final LoginPageExtra extra;

  const LoginPage({super.key, required this.extra});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordController = useTextEditingController();
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const BuildHeadEmail(title: "Enter your password"),

          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(24, 24, 51, 36),
              child: Text(
                'Enter your password for login  ${extra.email} account',
                style: textTheme.bodySmall,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: MyPasswordField(
              controller: passwordController,
              labelText: 'Password',
              hintText: 'Enter your password',
              validator: (value) => Validators.validatePassword(value),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: MyButton(onPressed: () {}, text: 'Login'),
          ),
          16.vertical,
        ],
      ),
    );
  }
}
