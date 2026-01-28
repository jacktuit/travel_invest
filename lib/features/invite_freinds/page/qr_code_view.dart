import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:travel_invest/app/theme/colors.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';

final class QrCodeViewExtra {
  final String referralLink;

  QrCodeViewExtra({required this.referralLink});
}

class QrCodeView extends ConsumerWidget {
  final QrCodeViewExtra extra;

  const QrCodeView({super.key, required this.extra});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Scan QR",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(16),
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                height: 200,
                child: PrettyQrView(
                  qrImage: QrImage(
                    QrCode.fromData(
                      data: extra.referralLink,
                      errorCorrectLevel: QrErrorCorrectLevel.L,
                    ),
                  ),
                ),
              ),
            ),
            80.vertical,
            Text(
              "Scan the QR code to get the referral link",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            30.vertical,

            Text(
              textAlign: TextAlign.center,
              "We ask you to grant access to files on your device to search for ESP.",
              style: TextStyle(
                color: AppColors.hintLight,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            30.vertical,
          ],
        ),
      ),
    );
  }
}
