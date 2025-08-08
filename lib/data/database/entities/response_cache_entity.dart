import 'dart:convert';

import '../app_database.dart';
import '../daos/response_cache_dao.dart';

class ResponseCacheEntity {
  final String url;
  final bool withAuth;
  final String? json;

  ResponseCacheEntity({required this.url, required this.withAuth, this.json});

  Map<String, dynamic> toMap() {
    return {'url': url, 'with_auth': withAuth ? 1 : 0, 'json': json};
  }

  factory ResponseCacheEntity.fromMap(Map<String, dynamic> map) {
    return ResponseCacheEntity(
      url: map['url'] ?? '',
      withAuth: map['with_auth'] == 1,
      json: map['json'],
    );
  }

  static Future<void> save({
    required String url,
    required bool withAuth,
    dynamic json,
  }) async {
    final db = await AppDatabase.database;
    final dao = ResponseCacheDao(db: db);
    await dao.insert(
      entity: ResponseCacheEntity(
        url: url,
        withAuth: withAuth,
        json: jsonEncode(json),
      ),
    );
  }

  static Future<ResponseCacheEntity?> get({
    required String url,
    required bool withAuth,
  }) async {
    final db = await AppDatabase.database;
    final dao = ResponseCacheDao(db: db);
    return await dao.getByUrl(url: url, withAuth: withAuth ? 1 : 0);
  }
}
