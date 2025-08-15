import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifiers.g.dart';

@riverpod
class AuthHeaderText extends _$AuthHeaderText {
  static const _texts = [
    'Sign in to your\nAccount',
    'Enter the\nverification code',
    'Create a new\naccount',
  ];

  Timer? _timer;
  int _currentIndex = 0;

  @override
  String build() {
    _startTextCycling();
    return _texts[_currentIndex];
  }

  void _startTextCycling() {
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      _currentIndex = (_currentIndex + 1) % _texts.length;
      state = _texts[_currentIndex];
    });

    // Cancel timer when provider is disposed
    ref.onDispose(() {
      _timer?.cancel();
    });
  }
}
