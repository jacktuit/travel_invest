import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/app/router/routes.dart';
import 'package:travel_invest/common/utils/validators.dart';
import 'package:travel_invest/widgets/auth_widgets/sign_in_options_widget.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';
import 'package:travel_invest/widgets/inputs/my_text_field.dart';
import '../../../common/helpers/alert_helper.dart';
import '../../../widgets/inputs/my_password_field.dart';
import 'auth_page/build_head.dart';
import 'auth_page/build_email_otp_check.dart';
import 'auth_page/build_login_page.dart';
import '../notifiers/check_email_notifier.dart';

class InitialAuthLogin extends HookConsumerWidget {
  const InitialAuthLogin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final formKey = useMemoized(() => GlobalKey<FormState>());
    final emailController = useTextEditingController();
    final checkEmailNotifier = ref.watch(checkEmailNotifierProvider);
    ref.listen(checkEmailNotifierProvider, (previous, next) {
      next.when(
        data: (data) {
          if (data?.email == true) {
            context.push(
              AppRoutes.loginPage,
              extra: LoginPageExtra(email: emailController.text),
            );
          }
          if (data?.email == false && data?.id != null) {
            context.push(
              AppRoutes.emailOtpCheckPage,
              extra: EmailOtpCheckPageExtra(
                email: emailController.text,
                otpID: data!.id!,
              ),
            );
          }
        },
        error: (error, stackTrace) {
          AlertHelper.showSnackBar(context, stackTrace.toString());
        },
        loading: () {},
      );
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const BuildHead(),

              Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Text(
                  'Please enter your email address to sign in.',
                  style: textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 37, 24, 0),
                child: MyTextField(
                  labelText: 'Email',
                  hintText: 'abc@example.com',
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (value) => Validators.validateEmail(value),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(16, 36, 24, 0),
                child: MyButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      ref
                          .read(checkEmailNotifierProvider.notifier)
                          .checkEmail(email: emailController.text);
                    }
                  },
                  text: 'Log In or Register',
                  isLoading: checkEmailNotifier.isLoading,
                ),
              ),
              SignInOptionsWidget(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
