import 'package:travel_invest/data/repositories/auth/models/user_model.dart';

import 'cache.dart';

final UserCache userCache = UserCache();

final class UserCache {
  static const _tokenKey = '_tokenKey';
  static const _refreshTokenKey = '_refreshTokenKey';
  static const _userKey = '_userKey';

  Future<void> saveToken({
    required String token,
    required String refreshToken,
  }) async {
    await cache.setString(_tokenKey, token);
    await cache.setString(_refreshTokenKey, refreshToken);
  }

  String? get token => cache.getString(_tokenKey);

  String? get refreshToken => cache.getString(_refreshTokenKey);

  UserModel? get user {
    try {
      final json = cache.getMap(_userKey);
      return UserModel.fromJson(json!);
    } catch (_) {
      return null;
    }
  }

  Future<void> clear() async {
    await cache.remove(_tokenKey);
    await cache.remove(_refreshTokenKey);
    await cache.remove(_userKey);
  }
}
