import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/app/theme/colors.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';

class NotificationPage extends ConsumerWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_card()],
    );
  }

  Widget _card() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Visit Registan in Samarkand!",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          8.vertical,
          Text(
            "A unique opportunity to learn about the history of Uzbekistan. Don't forget to add it to your itinerary!",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
