import 'package:flutter/material.dart';
import 'package:travel_invest/widgets/app_bars/my_app_bar.dart';

import 'discount_cards/build_cards.dart';
import 'discount_cards/build_info.dart';
import 'discount_cards/build_video.dart';

class DiscountCardsPage extends StatelessWidget {
  const DiscountCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        context: context,
        hasBackButton: true,
        title: 'Discount cards',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [BuildVideo(), BuildInfo(), BuildCards()],
        ),
      ),
    );
  }
}
