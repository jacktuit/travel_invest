import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../home/pages/home_page/build_become_partner_card.dart';
import '../../home/pages/home_page/build_invest_card.dart';
import '../../home/pages/home_page/build_invite_card.dart';
import '../../home/pages/home_page/build_welcome.dart';

class TravelHomePage extends ConsumerWidget {
  const TravelHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
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
