import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/app/router/routes.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';
import 'package:travel_invest/common/toast/toast.dart';
import 'package:travel_invest/data/cache/cache.dart';

import '../../../app/theme/extensions.dart';
import '../../../common/utils/utils.dart';
import '../../../common/widget/yes_no_dialog.dart';
import '../../../gen/assets.gen.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              final isYes = await showYesNoDialog(
                context: context,
                title: 'Confirmation',
                description: 'Do you want to log out of your account?',
              );

              if (isYes) {
                cache.clear();
                context.go(AppRoutes.initialAuthLogin);
              } else {}
            },
            icon: Icon(Icons.logout_outlined, color: Colors.red, size: 20),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            20.vertical,

            ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: CachedNetworkImage(
                imageUrl:
                    'https://i.pinimg.com/736x/00/f5/d9/00f5d96221185406e2693e031621d3c7.jpg',
                width: 80,
                height: 80,
              ),
            ),
            10.vertical,

            Text('Hello, Welcome 👋', style: textTheme.labelMedium),

            20.vertical,
            _item(
              title: 'My cards',
              icon: Assets.svg.wallet,
              onTap: () {
                context.push(AppRoutes.discountCards);
              },
            ),
            10.vertical,
            _item(
              title: 'Language',
              icon: Assets.svg.languageIcon,
              onTap: () {
                AppToast.showInfo(context, "Cooming soon");
              },
            ),
            10.vertical,
            _item(
              title: 'Support chat',
              icon: Assets.svg.supportChat,
              onTap: () {
                AppToast.showInfo(context, "Cooming soon");
              },
            ),
            10.vertical,
            _item(
              title: 'FAQ',
              icon: Assets.svg.faq,
              onTap: () {
                AppToast.showInfo(context, "Cooming soon");
              },
            ),
            10.vertical,
            _item(
              title: 'Business partners',
              icon: Assets.svg.businessPartners,
              onTap: () {
                context.push(AppRoutes.partnersPage);
              },
            ),
            10.vertical,
            _item(
              title: 'Service rules',
              icon: Assets.svg.serviceRules,
              onTap: () {
                AppToast.showInfo(context, "Cooming soon");
              },
            ),
            10.vertical,
            _item(
              title: 'Delete account',
              icon: Assets.svg.deleteOutlined,
              onTap: () async {
                final isYes = await showYesNoDialog(
                  context: context,
                  title: "Do you want to delete your account?",
                  description:
                      "Deleting your account will delete your cards and other personal information.",
                );

                if (isYes) {
                  AppToast.showInfo(context, "Your account has been deleted.");
                  cache.clear();
                  context.go(AppRoutes.initialAuthLogin);
                } else {}
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _item({
    required String title,
    required String icon,
    required VoidCallback onTap,
  }) {
    return ListTile(
      minTileHeight: 40,
      contentPadding: EdgeInsets.symmetric(horizontal: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      leading: SvgPicture.asset(icon, width: 20, height: 20),
      onTap: () {
        onTap();
        Utils.vibrate();
      },
      tileColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded, size: 13),
    );
  }
}
