import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/repositories/auth/auth_repository.dart';
import '../../../data/repositories/auth/models/check_user_email_model.dart';

part 'check_email_code_notifier.g.dart';

@riverpod
class CheckEmailCodeNotifier extends _$CheckEmailCodeNotifier {
  @override
  FutureOr<String?> build() async {
    return null;
  }

  Future<void> checkSms({
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
