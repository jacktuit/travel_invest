import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_notifier.g.dart';

@riverpod
class NavigationNotifier extends _$NavigationNotifier {
  @override
  int build() {
    return 0;
  }

  void change(int index) {
    state = index;
  }
}
