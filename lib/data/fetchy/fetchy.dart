import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../../common/errors/no_internet_error.dart';
import '../../common/errors/server_error.dart';
import '../../common/errors/unauthenticated_error.dart';
import '../../common/helpers/connection_helper.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/utils.dart';
import '../cache/user_cache.dart';
import '../database/entities/response_cache_entity.dart';
import '../repositories/auth/auth_repository.dart';

final Fetchy fetchy = Fetchy();

final class Fetchy {
  final _logger = Logger();
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: Constants.baseUrl,
      receiveTimeout: Duration(seconds: 20),
      sendTimeout: Duration(seconds: 20),
      connectTimeout: Duration(seconds: 20),
      responseType: ResponseType.json,
      validateStatus: (status) => true,
    ),
  );

  Fetchy();

  String get _token {
    final token = userCache.token;

    if (token == null) {
      authRepository.logout();
      throw UnauthenticatedError();
    }

    return token;
  }

  void _log(
    String method,
    String path,
    Map<String, String> headers,
    dynamic body,
    int? statusCode,
    dynamic response,
  ) {
    _logger.d({
      'method': method,
      'path': path,
      'headers': headers,
      'body': body,
      'statusCode': statusCode,
      'response': response,
    });

    log(jsonEncode(response));
  }

  void _logError(
    String method,
    String path,
    Map<String, String> headers,
    dynamic body,
    Object? error,
    StackTrace stack,
  ) {
    _logger.e({
      'path': path,
      'method': method,
      'headers': headers,
      'body': body,
      'error': error,
      'stack': stack,
    });
  }

  Future<bool?> _validateResponse(Response response) async {
    final code = response.statusCode;

    if (code == 401) {
      await authRepository.refreshToken();
      return true;
    }

    if (code != null && !(code >= 200 && code < 300)) {
      throw ServerError(code: code, message: response.data['message']);
    }

    return null;
  }

  Future<Map<String, dynamic>> _getSavedResponse({
    required String path,
    required bool withAuth,
  }) async {
    try {
      final entity = await ResponseCacheEntity.get(
        url: Constants.baseUrl + path,
        withAuth: withAuth,
      );

      return jsonDecode(entity!.json!);
    } catch (_) {
      throw NoInternetError();
    }
  }

  Future<void> _saveResponse({
    required String path,
    required bool withAuth,
    required dynamic data,
  }) async {
    final url = Constants.baseUrl + path;

    await ResponseCacheEntity.save(url: url, withAuth: withAuth, json: data);
  }

  Future get(
    String path, {
    bool log = false,
    bool withCaching = false,
    CancelToken? cancelToken,
  }) async {
    final headers = <String, String>{};

    if (withCaching && !ConnectionHelper.hasConnection) {
      return _getSavedResponse(path: path, withAuth: false);
    }

    try {
      final response = await dio.get(
        path,
        cancelToken: cancelToken,
        options: Options(headers: headers),
      );

      if (withCaching) {
        await _saveResponse(path: path, withAuth: false, data: response.data);
      }

      if (log) {
        _log('GET', path, headers, null, response.statusCode, response.data);
      }

      await _validateResponse(response);

      return response.data;
    } catch (error, stack) {
      _logError('GET', path, headers, null, error, stack);
      rethrow;
    }
  }

  Future getWithAuth(
    String path, {
    bool log = false,
    bool withCaching = false,
    CancelToken? cancelToken,
    bool? lastTry,
  }) async {
    final headers = <String, String>{'Authorization': 'Bearer $_token'};

    if (withCaching && !ConnectionHelper.hasConnection) {
      return _getSavedResponse(path: path, withAuth: true);
    }

    try {
      final response = await dio.get(
        path,
        cancelToken: cancelToken,
        options: Options(headers: headers),
      );

      if (withCaching) {
        await _saveResponse(path: path, withAuth: true, data: response.data);
      }

      if (log) {
        _log('GET', path, headers, null, response.statusCode, response.data);
      }

      final validateResponse = await _validateResponse(response);
      if (validateResponse == true && lastTry != true) {
        return getWithAuth(
          path,
          log: log,
          withCaching: withCaching,
          cancelToken: cancelToken,
          lastTry: true,
        );
      }

      return response.data;
    } catch (error, stack) {
      _logError('GET', path, headers, null, error, stack);
      rethrow;
    }
  }

  Future post(
    String path,
    body, {
    bool log = false,
    CancelToken? cancelToken,
  }) async {
    final headers = <String, String>{'device_id': await Utils.getDeviceId()};

    try {
      final response = await dio.post(
        path,
        data: body,
        cancelToken: cancelToken,
        options: Options(headers: headers),
      );

      if (log) {
        _log('POST', path, headers, body, response.statusCode, response.data);
      }

      await _validateResponse(response);

      return response.data;
    } catch (error, stack) {
      _logError('POST', path, headers, body, error, stack);
      rethrow;
    }
  }

  Future postWithAuth(
    String path,
    body, {
    bool log = false,
    CancelToken? cancelToken,
    bool? lastTry,
  }) async {
    final headers = <String, String>{'Authorization': 'Bearer $_token'};

    try {
      final response = await dio.post(
        path,
        data: body,
        cancelToken: cancelToken,
        options: Options(headers: headers),
      );

      if (log) {
        _log('POST', path, headers, body, response.statusCode, response.data);
      }

      final validateResponse = await _validateResponse(response);
      if (validateResponse == true && lastTry != true) {
        return postWithAuth(
          path,
          body,
          log: log,
          cancelToken: cancelToken,
          lastTry: true,
        );
      }

      return response.data;
    } catch (error, stack) {
      _logError('POST', path, headers, body, error, stack);
      rethrow;
    }
  }

  Future put(
    String path,
    body, {
    bool log = false,
    CancelToken? cancelToken,
  }) async {
    final headers = <String, String>{};

    try {
      final response = await dio.put(
        path,
        data: body,
        cancelToken: cancelToken,
        options: Options(headers: headers),
      );

      if (log) {
        _log('PUT', path, headers, body, response.statusCode, response.data);
      }

      await _validateResponse(response);

      return response.data;
    } catch (error, stack) {
      _logError('PUT', path, headers, body, error, stack);
      rethrow;
    }
  }

  Future putWithAuth(
    String path,
    body, {
    bool log = false,
    CancelToken? cancelToken,
    bool? lastTry,
  }) async {
    final headers = <String, String>{'Authorization': 'Bearer $_token'};

    try {
      final response = await dio.put(
        path,
        data: body,
        cancelToken: cancelToken,
        options: Options(headers: headers),
      );

      if (log) {
        _log('PUT', path, headers, body, response.statusCode, response.data);
      }

      final validateResponse = await _validateResponse(response);
      if (validateResponse == true && lastTry != true) {
        return putWithAuth(
          path,
          body,
          log: log,
          cancelToken: cancelToken,
          lastTry: true,
        );
      }

      return response.data;
    } catch (error, stack) {
      _logError('PUT', path, headers, body, error, stack);
      rethrow;
    }
  }
}
