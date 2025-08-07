import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'cache.dart';

final class SharedPreferencesCache extends Cache {
  Map<String, dynamic> _map = {};

  SharedPreferencesCache._();

  static Future<SharedPreferencesCache> init() async {
    final cache = SharedPreferencesCache._();
    cache._map = await SharedPreferencesAsync().getAll();
    return cache;
  }

  @override
  Future<void> clear() async {
    await SharedPreferencesAsync().clear();
    _map = {};
  }

  @override
  bool? getBool(String key) {
    try {
      return _map[key];
    } catch (_) {
      return null;
    }
  }

  @override
  double? getDouble(String key) {
    try {
      return _map[key];
    } catch (_) {
      return null;
    }
  }

  @override
  int? getInt(String key) {
    try {
      return _map[key];
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? getMap(String key) {
    try {
      String jsonString = _map[key];
      return jsonDecode(jsonString);
    } catch (_) {
      return null;
    }
  }

  @override
  String? getString(String key) {
    try {
      return _map[key];
    } catch (_) {
      return null;
    }
  }

  @override
  List<String>? getStringList(String key) {
    try {
      return _map[key];
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> remove(String key) async {
    await SharedPreferencesAsync().remove(key);
    _map.remove(key);
  }

  @override
  Future<void> setBool(String key, bool value) async {
    await SharedPreferencesAsync().setBool(key, value);
    _map[key] = value;
  }

  @override
  Future<void> setDouble(String key, double value) async {
    await SharedPreferencesAsync().setDouble(key, value);
    _map[key] = value;
  }

  @override
  Future<void> setInt(String key, int value) async {
    await SharedPreferencesAsync().setInt(key, value);
    _map[key] = value;
  }

  @override
  Future<void> setMap(String key, Map<String, dynamic> value) async {
    String jsonString = jsonEncode(value);
    await SharedPreferencesAsync().setString(key, jsonString);
    _map[key] = jsonString;
  }

  @override
  Future<void> setString(String key, String value) async {
    await SharedPreferencesAsync().setString(key, value);
    _map[key] = value;
  }

  @override
  Future<void> setStringList(String key, List<String> value) async {
    await SharedPreferencesAsync().setStringList(key, value);
    _map[key] = value;
  }
}
