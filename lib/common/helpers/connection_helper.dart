import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connection_helper.g.dart';

@Riverpod(keepAlive: true)
class ConnectionHelper extends _$ConnectionHelper {
  static bool get hasConnection => _hasConnection;
  static bool _hasConnection = true;

  static Future<bool> hasConnectionAsync() async {
    final results = await Connectivity().checkConnectivity();
    return _contains(results);
  }

  @override
  bool build() {
    final sub = Connectivity().onConnectivityChanged.listen((event) {
      _hasConnection = _contains(event);
      state = _hasConnection;
    });

    ref.onDispose(sub.cancel);

    () async {
      final results = await Connectivity().checkConnectivity();
      _hasConnection = _contains(results);
      state = _hasConnection;
    }();

    return false;
  }

  static bool _contains(List<ConnectivityResult> results) {
    for (final result in results) {
      if (results.any((e) => true)) {
        return switch (result) {
          ConnectivityResult.bluetooth => false,
          ConnectivityResult.wifi => true,
          ConnectivityResult.ethernet => true,
          ConnectivityResult.mobile => true,
          ConnectivityResult.none => false,
          ConnectivityResult.vpn => false,
          ConnectivityResult.other => false,
        };
      }
    }

    return false;
  }
}
