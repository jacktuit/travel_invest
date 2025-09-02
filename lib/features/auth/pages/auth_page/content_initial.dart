// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:logger/logger.dart';
// import 'package:travel_invest/common/utils/validators.dart';
// import 'package:travel_invest/widgets/auth_widgets/sign_in_options_widget.dart';
// import 'package:travel_invest/widgets/buttons/my_button.dart';
// import 'package:travel_invest/widgets/inputs/my_text_field.dart';
//
// import '../../notifiers/auth_notifiers.dart';
// import '../../notifiers/check_email_notifier.dart';
//
// class ContentInitial extends HookConsumerWidget {
//   const ContentInitial({
//     super.key,
//     required this.onGoogleTap,
//     required this.onFacebookTap,
//     required this.onAppleTap,
//     required this.onSms,
//   });
//
//   final void Function() onGoogleTap;
//   final void Function() onFacebookTap;
//   final void Function() onAppleTap;
//   final void Function(String email, int smsId) onSms;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final theme = Theme.of(context);
//     final textTheme = theme.textTheme;
//
//     final formKey = useMemoized(() => GlobalKey<FormState>());
//     final emailController = useTextEditingController();
//     final checkEmailNotifier = ref.watch(checkEmailNotifierProvider);
//     ref.listen(checkEmailNotifierProvider, (previous, next) {
//       next.when(
//         data: (data) {
//           if (data?.email == true) {
//             ref.read(authPageNotifierProvider.notifier).goToPassword();
//           }
//           if (data?.email == false && data?.id != null) {
//             onSms(emailController.text, data!.id!);
//             ref.read(authPageNotifierProvider.notifier).goToSmsVerification();
//           }
//         },
//         error: (error, stackTrace) {},
//         loading: () {},
//       );
//     });
//
//     return SingleChildScrollView(
//       child: Form(
//         key: formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(left: 24, right: 24, top: 24),
//               child: Text(
//                 'Please enter your email address to sign in.',
//                 style: textTheme.bodySmall,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(24, 37, 24, 0),
//               child: MyTextField(
//                 labelText: 'Email',
//                 hintText: 'abc@example.com',
//                 keyboardType: TextInputType.emailAddress,
//                 controller: emailController,
//                 validator: (value) => Validators.validateEmail(value),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(24, 36, 24, 0),
//               child: MyButton(
//                 onPressed: () {
//                   if (formKey.currentState?.validate() ?? false) {
//                     ref
//                         .read(checkEmailNotifierProvider.notifier)
//                         .checkEmail(email: emailController.text);
//                   }
//                 },
//                 text: 'Log In',
//                 isLoading: checkEmailNotifier.isLoading,
//               ),
//             ),
//
//             SizedBox(height: 16),
//           ],
//         ),
//       ),
//     );
//   }
// }
