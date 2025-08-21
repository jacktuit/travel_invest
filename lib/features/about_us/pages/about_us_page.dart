import 'package:flutter/material.dart';
import 'package:travel_invest/widgets/app_bars/my_app_bar.dart';

import 'about_us_page/build_video.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        context: context,
        hasBackButton: true,
        title: 'About us',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [BuildVideo()],
        ),
      ),
    );
  }
}
