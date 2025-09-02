import 'dart:async';

import 'package:logger/logger.dart';
import 'package:travel_invest/app/router/router.dart';
import 'package:travel_invest/app/router/routes.dart';
import 'package:travel_invest/common/errors/unauthenticated_error.dart';
import 'package:travel_invest/data/cache/user_cache.dart';
import 'package:travel_invest/data/fetchy/fetchy.dart';

import 'models/check_user_email_model.dart';
import 'models/user_model.dart';

final AuthRepository authRepository = AuthRepository();

final class AuthRepository {
  AuthRepository() {
    _authStatusController = StreamController<bool>.broadcast();
    _isLoggedIn = userCache.token != null;
    _authStatusController.add(_isLoggedIn);
  }

  late StreamController<bool> _authStatusController;
  late bool _isLoggedIn;

  Stream<bool> get authStatus => _authStatusController.stream;

  bool get isLoggedIn => _isLoggedIn;

  Future<void> logout() async {
    await userCache.clear();
    _isLoggedIn = false;
    _authStatusController.add(_isLoggedIn);
    router.go(AppRoutes.initialAuthLogin);
  }

  Future<void> refreshToken() async {
    final refreshToken = userCache.refreshToken;

    if (refreshToken == null) {
      await logout();
      throw UnauthenticatedError();
    }

    final response = await fetchy.dio.post(
      '/auth/refresh/token',
      data: {'refreshToken': refreshToken},
    );

    if (response.data?['status'] == 401 || response.statusCode == 401) {
      await logout();
      throw UnauthenticatedError();
    }

    final token = response.data?['token'];
    final newRefreshToken = response.data?['refreshToken'];

    await userCache.saveToken(
      token: token,
      refreshToken: newRefreshToken,
      user: UserModel.empty(),
    );
  }

  Future<String> login({
    required String email,
    required String password,
  }) async {
    final response = await fetchy.dio.post(
      '/services/platon-core/api/auth/login',
      data: {'email': email, 'password': password},
    );

    if (response.data?['status'] == 401 || response.statusCode == 401) {
      throw "Логин ёки парол хато киритилди";
    }

    final token = response.data?['token'];
    final refreshToken = response.data?['refreshToken'];

    await userCache.saveToken(
      token: token,
      refreshToken: refreshToken,
      user: UserModel.empty(),
    );
    _isLoggedIn = true;
    _authStatusController.add(_isLoggedIn);
    return token;
  }

  Future<CheckUserEmailResponse?> checkEmail({required String email}) async {
    final data = await fetchy.get(
      "/services/platon-core/api/auth/check/email?email=$email",
      log: true,
    );

    if (data['data'] == false) {
      final smsId = await fetchy.post(
        "/services/platon-core/api/auth/send-code",
        log: true,
        {"email": email},
      );

      return CheckUserEmailResponse(email: false, id: smsId['data']['id']);
    } else if (data['data'] == true) {
      return CheckUserEmailResponse(email: true, id: null);
    }
    return null;
  }

  Future<String?> checkEmailCode({
    required String email,
    required int smsId,
    required String code,
  }) async {
    final data = await fetchy.get(
      "/services/platon-core/api/auth/check/otp?id=$smsId&code=$code&email=$email",
      log: true,
    );
    return data["data"]["status"];
  }

  Future<String?> signUp({
    required String email,
    required String password,
  }) async {
    final data = await fetchy.post(
      "/services/platon-core/api/auth/registration",
      {"password": password, "email": email, "language": "eng"},
      log: true,
    );
    return data["data"]["access_token"];
  }
}
