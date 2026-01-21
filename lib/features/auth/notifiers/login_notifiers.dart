import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travel_invest/data/repositories/auth/auth_repository.dart';

part 'login_notifiers.g.dart';

@riverpod
class LoginNotifiers extends _$LoginNotifiers {
  @override
  FutureOr<String?> build() async {
    return null;
  }

  Future<void> login({required String email, required String password}) async {
    if (state.isLoading) return;

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final data = await authRepository.login(email: email, password: password);

      return data;
    });
  }
}
