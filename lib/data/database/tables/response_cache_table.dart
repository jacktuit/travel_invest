abstract final class ResponseCacheTable {
  static const tableName = 'response_cache';

  static const columnUrl = 'url';
  static const columnWithAuth = 'with_auth';
  static const columnJson = 'json';

  static const createTable =
      '''
    CREATE TABLE $tableName (
      $columnUrl TEXT PRIMARY KEY,
      $columnWithAuth INTEGER,
      $columnJson TEXT
    )
  ''';

  static const dropTable =
      '''
    DROP TABLE IF EXISTS $tableName
  ''';
}
