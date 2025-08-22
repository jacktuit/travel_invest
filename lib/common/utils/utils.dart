import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

abstract final class Utils {
  static final numberFormatter = NumberFormat.decimalPattern('uz');

  static final currencyFormatter = NumberFormat.currency(
    decimalDigits: 0,
    locale: 'uz',
    symbol: '',
    name: '',
  );

  static String formatNumber(num number) {
    return numberFormatter.format(number);
  }

  static String formatCurrency(num number) {
    return currencyFormatter.format(number);
  }

  static String formatPhoneNumber(String value) {
    if (value.length >= 9) {
      value = value.substring(value.length - 9);

      return '+998 (${value.substring(0, 2)}) ${value.substring(2, 5)} ${value.substring(5, 7)} ${value.substring(7, 9)}';
    }

    return value;
  }

  static const _uuid = Uuid();

  static String generateUuid() {
    return _uuid.v4();
  }

  static String? _deviceId;

  static Future<String> getDeviceId() async {
    if (_deviceId != null) {
      return _deviceId!;
    }

    if (Platform.isAndroid) {
      final deviceInfo = DeviceInfoPlugin();
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      _deviceId = androidInfo.id;
      return _deviceId!;
    }

    if (Platform.isIOS) {
      final deviceInfo = DeviceInfoPlugin();
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      _deviceId = iosInfo.identifierForVendor ?? '';
      return _deviceId!;
    }
    _deviceId = 'device_id';
    return _deviceId!;
  }

  static String beautifyLeftSeconds(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;

    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }
}
