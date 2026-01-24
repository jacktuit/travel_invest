import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travel_invest/gen/assets.gen.dart';

import '../../notifiers/navigation_notifier.dart';

class BuildNavigation extends HookConsumerWidget {
  const BuildNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    const double iconSize = 24;

    final currentIndex = ref.watch(navigationProvider);

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: theme.dividerColor.withValues(alpha: .41),
                blurRadius: 16,
                spreadRadius: 0,
                offset: Offset(0, -4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SalomonBottomBar(
              currentIndex: currentIndex,
              curve: Curves.easeOutQuint,
              backgroundColor: theme.cardColor,
              selectedItemColor: theme.colorScheme.primary,
              unselectedItemColor: theme.colorScheme.onSurfaceVariant,
              selectedColorOpacity: 1,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              itemPadding: EdgeInsets.symmetric(
                horizontal: 12.5,
                vertical: 9.5,
              ),
              itemShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onTap: (index) {
                ref.read(navigationProvider.notifier).change(index);
              },
              items: [
                SalomonBottomBarItem(
                  icon: SvgPicture.asset(
                    Assets.svg.homeOutlined,
                    width: iconSize,
                    height: iconSize,
                  ),
                  activeIcon: SvgPicture.asset(
                    Assets.svg.homeFilled,
                    width: iconSize,
                    height: iconSize,
                  ),
                  title: _Label(label: 'Home'),
                ),
                SalomonBottomBarItem(
                  icon: SvgPicture.asset(
                    Assets.svg.partners,
                    width: iconSize,
                    height: iconSize,
                  ),
                  activeIcon: SvgPicture.asset(
                    Assets.svg.partnersActive,
                    width: iconSize,
                    height: iconSize,
                  ),
                  title: _Label(label: 'Bookmark'),
                ),
                SalomonBottomBarItem(
                  icon: SvgPicture.asset(
                    Assets.svg.exploreOutlined,
                    width: iconSize,
                    height: iconSize,
                  ),
                  activeIcon: SvgPicture.asset(
                    Assets.svg.exploreFilled,
                    width: iconSize,
                    height: iconSize,
                  ),
                  title: _Label(label: 'Explore'),
                ),
                SalomonBottomBarItem(
                  icon: SvgPicture.asset(
                    Assets.svg.profileOutlined,
                    width: iconSize,
                    height: iconSize,
                  ),
                  activeIcon: SvgPicture.asset(
                    Assets.svg.profileFilled,
                    width: iconSize,
                    height: iconSize,
                  ),
                  title: _Label(label: 'Profile'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Label extends StatelessWidget {
  const _Label({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Text(
      label,
      style: textTheme.bodySmall?.copyWith(
        color: theme.cardColor,
        fontWeight: FontWeight.w500,
        fontSize: 13,
      ),
    );
  }
}
