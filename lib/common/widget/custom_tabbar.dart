import 'package:flutter/material.dart';
import 'package:travel_invest/app/theme/colors.dart';

import '../../../app/theme/extensions.dart';

class CustomTabBar extends StatelessWidget {
  final TabController controller;
  final List<Widget> tabs;

  const CustomTabBar({super.key, required this.controller, required this.tabs});

  @override
  Widget build(BuildContext context) {
    final myColor = context.myColors;
    return Container(
      height: 52,
      // padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color(0xffDCE7DF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TabBar(
        controller: controller,
        indicator: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade50,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        labelColor: Colors.white,
        unselectedLabelColor: AppColors.primary,
        tabs: tabs,
      ),
    );
  }
}
