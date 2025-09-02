import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/auth/auth_repository.dart';


part 'check_email_otp_notifier.g.dart';

@riverpod
class CheckEmailOtpNotifier extends _$CheckEmailOtpNotifier {
  @override
  FutureOr<String?> build() async {
    return null;
  }

  Future<void> checkEmailCode({
    required String email,
    required int smsId,
    required String code,
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
