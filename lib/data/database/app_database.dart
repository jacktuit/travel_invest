import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static const _dbName = 'app_database.db';
  static const _dbVersion = 1;

  static Database? _instance;

  static Future<Database> get database async {
    if (_instance != null) return _instance!;
    _instance = await _initDb();
    return _instance!;
  }

  static Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _dbName);

    return await openDatabase(path, version: _dbVersion);
  }

  static Future<void> _onCreate(Database db, int version) async {
    await db.execute('');
  }
}
