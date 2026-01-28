import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';

import '../../../gen/assets.gen.dart';

class NewsPage extends ConsumerWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(Assets.png.nature.path),
        6.vertical,
        Text(
          "Exciting News from the River Region in Malaysia!",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        6.vertical,
        Row(
          children: [
            Icon(Icons.calendar_today_outlined, color: Colors.grey, size: 16),
            4.horizontal,
            Text("24.01.2026y 12:28", style: TextStyle(color: Colors.grey)),
            Spacer(),
            Icon(Icons.remove_red_eye_outlined, color: Colors.grey, size: 16),
            4.horizontal,
            Text("120 views", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
