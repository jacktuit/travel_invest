import 'package:sqflite/sqflite.dart';

import '../entities/response_cache_entity.dart';
import '../tables/response_cache_table.dart';

final class ResponseCacheDao {
  final Database _db;

  ResponseCacheDao({required Database db}) : _db = db;

  Future<void> insert({required ResponseCacheEntity entity}) async {
    await _db.insert(
      ResponseCacheTable.tableName,
      entity.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<ResponseCacheEntity?> getByUrl({
    required String url,
    required int withAuth,
  }) async {
    if (url.isEmpty) return null;

    final result = await _db.query(
      ResponseCacheTable.tableName,
      where:
          '${ResponseCacheTable.columnUrl} = ? AND ${ResponseCacheTable.columnWithAuth} = ?',
      whereArgs: [url, withAuth],
    );

    if (result.isEmpty) return null;

    return ResponseCacheEntity.fromMap(result.first);
  }

  Future<int> deleteByUrl({required String url}) async {
    if (url.isEmpty) return 0;

    return await _db.delete(
      ResponseCacheTable.tableName,
      where: '${ResponseCacheTable.columnUrl} = ?',
      whereArgs: [url],
    );
  }

  Future<int> deleteAll() async {
    return await _db.delete(ResponseCacheTable.tableName);
  }
}
