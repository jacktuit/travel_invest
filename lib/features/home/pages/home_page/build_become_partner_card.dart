import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';
import 'package:travel_invest/widgets/buttons/my_secondary_button.dart';
import 'package:travel_invest/widgets/cards/my_card.dart';

class BuildBecomePartnerCard extends StatelessWidget {
  const BuildBecomePartnerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      child: MyCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Become our Business Partner',
              style: textTheme.titleMedium?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
            8.vertical,
            Text(
              'Do you have a personal business? Join us and increase your customer flow.',
              style: textTheme.titleSmall?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff1A1C1E),
                height: 1.2,
              ),
            ),
            16.vertical,
            MyButton(onPressed: () {}, text: "Becoming a partner"),
            8.vertical,
          ],
        ),
      ),
    );
  }
}
