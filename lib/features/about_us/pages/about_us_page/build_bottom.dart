import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_invest/app/router/routes.dart';
import 'package:travel_invest/app/theme/extensions.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';
import 'package:travel_invest/widgets/buttons/my_outlined_button.dart';

class BuildBottom extends StatelessWidget {
  const BuildBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.myColors.background,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 8,
            children: [
              Expanded(
                child: MyOutlinedButton(
                  onPressed: () {},
                  text: 'Invite friends',
                ),
              ),
              Expanded(
                child: MyButton(
                  onPressed: () {
                    context.pushReplacement(AppRoutes.discountCards);
                  },
                  text: 'Start investing',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
