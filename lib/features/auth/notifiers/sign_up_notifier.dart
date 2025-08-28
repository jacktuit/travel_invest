import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/repositories/auth/auth_repository.dart';
import '../../../data/repositories/auth/models/check_user_email_model.dart';

part 'sign_up_notifier.g.dart';

@riverpod
class SignUpNotifiers extends _$SignUpNotifiers {
  @override
  FutureOr<String?> build() async {
    return null;
  }

  Future<void> checkEmailCode({
    required String email,
    required String password,
  }) async {
    if (state.isLoading) return;

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final data = await authRepository.checkEmailCode(
        email: email,
        smsId: smsId,
        code: code,
      );

      return data;
    });
  }
}
