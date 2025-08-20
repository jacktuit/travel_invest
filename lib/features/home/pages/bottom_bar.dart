import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../app/theme/colors.dart';
import '../../../gen/assets.gen.dart';
import '../notifiers/navigation_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navigationNotifierProvider);

    return Scaffold(
      body: IndexedStack(
        index: index,
        children: [Container(), Container(), Container(), Container()],
      ),
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: _BottomBar(index: index),
      ),
    );
  }
}

class _BottomBar extends ConsumerWidget {
  const _BottomBar({required this.index});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = [
      {"icon": Assets.svg.homeBarImage, "label": "Main"},
      {"icon": Assets.svg.cardBarImage, "label": "Statistics"},
      {"icon": Assets.svg.exploreBarImage, "label": "Explore"},
      {"icon": Assets.svg.profileBarImage, "label": "Profile"},
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 12,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (i) {
          final item = items[i];
          final isSelected = i == index;

          return GestureDetector(
            onTap: () =>
                ref.read(navigationNotifierProvider.notifier).change(i),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    item["icon"]!,

                    colorFilter: ColorFilter.mode(
                      isSelected ? Colors.white : AppColors.bodyTextLight,
                      BlendMode.srcIn,
                    ),
                  ),
                  if (isSelected) ...[
                    const SizedBox(width: 6),
                    Text(
                      item["label"]!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
