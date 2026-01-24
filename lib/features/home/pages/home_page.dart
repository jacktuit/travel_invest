import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/features/home/notifiers/navigation_notifier.dart';
import 'package:travel_invest/gen/assets.gen.dart';
import '../../travel_home/page/travel_home_page.dart';
import 'home_page/build_navigation.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    const double avatarWidth = 40;
    final index = ref.watch(navigationProvider);

    return PopScope(
      canPop: index == 0,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          ref.read(navigationProvider.notifier).change(0);
        }
      },
      child: Scaffold(
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
        backgroundColor: Color(0xffF0F1F3),
        body: IndexedStack(
          index: index,
          children: [TravelHomePage(), Container(), Container(), Container()],
        ),
        bottomNavigationBar: BuildNavigation(),
      ),
    );
  }
}
