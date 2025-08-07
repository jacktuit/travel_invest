import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app/app.dart';
import 'data/cache/cache.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  EasyLocalization.logger.enableLevels = [];
  await EasyLocalization.ensureInitialized();
  await initializeDateFormatting('uz');

  await initCache();

  runApp(
    ProviderScope(
      child: EasyLocalization(
        path: 'assets/translations',
        startLocale: Locale('uz'),
        supportedLocales: [Locale('uz')],
        child: App(),
      ),
    ),
  );
}
