import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifiers.freezed.dart';
part 'auth_notifiers.g.dart';

@freezed
sealed class AuthPageState with _$AuthPageState {
  static const animationDuration = 1000;

  const AuthPageState._();

  const factory AuthPageState.initial() = _AuthPageStateInitial;

  const factory AuthPageState.password() = _AuthPageStatePassword;

  const factory AuthPageState.smsVerification() = _AuthPageStateSmsVerification;

  const factory AuthPageState.signUp() = _AuthPageStateSignUp;

  String get headerText {
    return when(
      initial: () => 'Sign in to your\nAccount',
      password: () => 'Enter your\nPassword',
      smsVerification: () => 'Enter the\nverification code',
      signUp: () => 'Create a new\naccount',
    );
  }

  bool get isBackPressAvailable {
    return when(
      initial: () => true,
      password: () => false,
      smsVerification: () => false,
      signUp: () => false,
    );
  }

  bool isReverseAnimation(AuthPageState? oldState) {
    return when(
      initial: () =>
          oldState?.when(
            initial: () => false,
            password: () => true,
            smsVerification: () => true,
            signUp: () => true,
          ) ??
          false,
      password: () =>
          oldState?.when(
            initial: () => false,
            password: () => false,
            smsVerification: () => true,
            signUp: () => true,
          ) ??
          false,
      smsVerification: () =>
          oldState?.when(
            initial: () => false,
            password: () => false,
            smsVerification: () => false,
            signUp: () => true,
          ) ??
          false,
      signUp: () =>
          oldState?.when(
            initial: () => false,
            password: () => false,
            smsVerification: () => false,
            signUp: () => false,
          ) ??
          false,
    );
  }
}

@riverpod
class AuthPageNotifier extends _$AuthPageNotifier {
  @override
  (AuthPageState?, AuthPageState) build() {
    return (null, AuthPageState.initial());
  }

  void onBackPressed() {
    state.$2.when(
      initial: () {},
      password: () {
        state = (AuthPageState.password(), AuthPageState.initial());
      },
      smsVerification: () {
        state = (AuthPageState.smsVerification(), AuthPageState.password());
      },
      signUp: () {
        state = (AuthPageState.signUp(), AuthPageState.smsVerification());
      },
    );
  }

  void goToPassword() {
    state = (AuthPageState.initial(), AuthPageState.password());
  }

  void goToSmsVerification() {
    state = (AuthPageState.password(), AuthPageState.smsVerification());
  }

  void goToSignUp() {
    state = (AuthPageState.smsVerification(), AuthPageState.signUp());
  }
}
