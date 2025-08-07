import 'package:hooks_riverpod/hooks_riverpod.dart';

extension RefExtensions on Ref {
  Future<void> debounceExtension([int milliseconds = 300]) async {
    var didDispose = false;

    onDispose(() {
      didDispose = true;
    });

    await Future.delayed(Duration(milliseconds: milliseconds));

    if (didDispose) {
      throw Exception('Debounce extension disposed');
    }

    return;
  }
}
