import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';

import '../../../common/widget/custom_tabbar.dart';
import '../pages/news_page.dart';
import '../pages/notification_page.dart';

class NewsNotificationsPage extends ConsumerStatefulWidget {
  const NewsNotificationsPage({super.key});

  @override
  NewsNotificationsPageState createState() => NewsNotificationsPageState();
}

class NewsNotificationsPageState extends ConsumerState<NewsNotificationsPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News and Notification",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            20.vertical,
            
            CustomTabBar(
              controller: _controller,
              tabs: [
                Tab(text: 'News'),
                Tab(text: 'Notifications'),
              ],
            ),
            20.vertical,
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [NewsPage(), NotificationPage()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
