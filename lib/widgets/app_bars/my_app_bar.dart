import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_invest/app/theme/extensions.dart';

AppBar myAppBar({
  required BuildContext context,
  required bool hasBackButton,
  String? title,
}) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    backgroundColor: context.myColors.background,
    surfaceTintColor: context.myColors.background,
    shadowColor: context.myColors.divider,
    elevation: 0,
    scrolledUnderElevation: .4,
    leading: hasBackButton
        ? IconButton(
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              }
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            style: IconButton.styleFrom(foregroundColor: context.myColors.icon),
          )
        : null,
    title: title != null
        ? Text(
            title,
            style: TextStyle(
              color: context.myColors.text,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 1,
            ),
          )
        : null,
  );
}
