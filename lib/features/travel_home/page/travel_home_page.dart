import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/app/router/routes.dart';
import 'package:travel_invest/common/utils/utils.dart';
import '../../../gen/assets.gen.dart';
import '../widget/build_become_partner_card.dart';
import '../widget/build_invest_card.dart';
import '../widget/build_invite_card.dart';
import '../widget/build_welcome.dart';

class TravelHomePage extends ConsumerWidget {
  const TravelHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    const double avatarWidth = 40;

    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onTap: () {
            Utils.vibrate();
            context.push(AppRoutes.profilePage);
          },
          contentPadding: EdgeInsets.zero,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: CachedNetworkImage(
              imageUrl:
                  'https://i.pinimg.com/736x/00/f5/d9/00f5d96221185406e2693e031621d3c7.jpg',
              width: avatarWidth,
              height: avatarWidth,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Hello, Welcome 👋', style: textTheme.labelSmall),
              // Text(
              //   'Cameron Williamson',
              //   maxLines: 1,
              //   overflow: TextOverflow.ellipsis,
              //   style: textTheme.labelMedium,
              // ),
            ],
          ),
          trailing: IconButton(
            onPressed: () {
              Utils.vibrate();
              context.push(AppRoutes.newsNotificationsPage);
            },
            icon: SvgPicture.asset(
              Assets.svg.bellFilled,
              width: 20,
              height: 20,
            ),
            style: IconButton.styleFrom(
              fixedSize: Size.square(avatarWidth),
              maximumSize: Size.square(avatarWidth),
              minimumSize: Size.square(avatarWidth),
              backgroundColor: theme.cardColor,
              surfaceTintColor: theme.cardColor,
              foregroundColor: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildWelcome(),
            BuildInvestCard(),
            BuildInviteCard(),
            BuildBecomePartnerCard(),
          ],
        ),
      ),
    );
  }
}
