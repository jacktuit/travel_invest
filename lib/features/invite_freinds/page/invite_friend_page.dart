import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';
import '../widget/build_referral.dart';
import '../widget/build_video.dart';
import '../widget/build_info.dart';

class InviteFriendPage extends ConsumerWidget {
  const InviteFriendPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invite friends",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
        child: MyButton(onPressed: () {}, text: "Create new link"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [BuildInfo(), BuildVideo(), BuildReferral()],
      ),
    );
  }
}
