import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/app/router/routes.dart';
import 'package:travel_invest/app/theme/colors.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';
import 'package:travel_invest/common/utils/utils.dart';

import '../../../gen/assets.gen.dart';
import '../../../widgets/buttons/my_outlined_button.dart';
import '../page/qr_code_view.dart';

class BuildReferral extends ConsumerWidget {
  const BuildReferral({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Referral links",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          8.vertical,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    SvgPicture.asset(Assets.svg.referral),
                    16.horizontal,

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "NN5W2e",
                            style: TextStyle(
                              color: Color(0xff1A1C1E),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                            children: [
                              WidgetSpan(child: SizedBox(width: 4)),
                              WidgetSpan(
                                child: Icon(
                                  Icons.copy,
                                  size: 16,
                                  color: Color(0xff1A1C1E),
                                ),
                              ),
                            ],
                          ),
                        ),
                        6.vertical,
                        RichText(
                          text: TextSpan(
                            text: "Yuborilgan:",
                            style: TextStyle(
                              color: Color(0xff6C7278),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            children: [
                              WidgetSpan(child: SizedBox(width: 4)),

                              TextSpan(
                                text: "2 ta",
                                style: TextStyle(
                                  color: Color(0xff1A1C1E),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        6.vertical,
                        RichText(
                          text: TextSpan(
                            text: "Berilgan bonuslar:",
                            style: TextStyle(
                              color: Color(0xff6C7278),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            children: [
                              WidgetSpan(child: SizedBox(width: 4)),

                              TextSpan(
                                text: "\$104,05",
                                style: TextStyle(
                                  color: Color(0xff1A1C1E),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        8.vertical,
                      ],
                    ),
                  ],
                ),
                5.vertical,
                buildButton(
                  onPressed: () {
                    Utils.vibrate();
                    context.push(
                      AppRoutes.qrCodeView,
                      extra: QrCodeViewExtra(referralLink: "NN5W2e"),
                    );
                  },
                ),
                // MyOutlinedButton(onPressed: () {}, text: 'Invite friends'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton({required Function() onPressed}) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: Color(0xffF2F6FF),
          border: Border.all(color: AppColors.primary),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.svg.qrCode),
            16.horizontal,
            Text(
              "Open QR-Code",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
