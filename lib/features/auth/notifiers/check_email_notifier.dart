import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/auth/auth_repository.dart';
import '../../../data/repositories/auth/models/check_user_email_model.dart';

part 'check_email_notifier.g.dart';

@riverpod
class CheckEmailNotifier extends _$CheckEmailNotifier {
  @override
  FutureOr<CheckUserEmailResponse?> build() async {
    return null;
  }

  Future<void> checkEmail({required String email}) async {
    if (state.isLoading) return;

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final data = await authRepository.checkEmail(email: email);

      return data;
    });
  }
  void reset() {
    state = const AsyncValue.data(null);
  }
}
