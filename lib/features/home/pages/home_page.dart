import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_invest/gen/assets.gen.dart';

import 'home_page/build_invest_card.dart';
import 'home_page/build_invite_card.dart';
import 'home_page/build_more_about.dart';
import 'home_page/build_navigation.dart';
import 'home_page/build_welcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    const double avatarWidth = 40;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: theme.scaffoldBackgroundColor,
        shadowColor: theme.dividerColor,
        surfaceTintColor: theme.dividerColor,
        elevation: 0,
        scrolledUnderElevation: .4,
        leadingWidth: 16 + avatarWidth,
        toolbarOpacity: 1,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: CachedNetworkImage(
                imageUrl:
                    'https://i.pinimg.com/736x/00/f5/d9/00f5d96221185406e2693e031621d3c7.jpg',
                width: avatarWidth,
                height: avatarWidth,
              ),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hello, Welcome 👋', style: textTheme.labelSmall),
            Text(
              'Cameron Williamson',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.labelMedium,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
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
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildWelcome(),
          BuildMoreAbout(),
          Expanded(child: BuildInvestCard()),
          SizedBox(height: 8),
          BuildInviteCard(),
          SizedBox(height: 8),
        ],
      ),
      bottomNavigationBar: const BuildNavigation(),
    );
  }
}
