import 'src/cache.dart';
import 'src/shared_preferences_cache.dart';

late final Cache cache;

Future<void> initCache() async {
  cache = await SharedPreferencesCache.init();
}
