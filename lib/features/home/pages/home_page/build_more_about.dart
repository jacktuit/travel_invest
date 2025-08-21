import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_invest/app/router/routes.dart';

class BuildMoreAbout extends StatelessWidget {
  const BuildMoreAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'More about',
            style: textTheme.labelSmall?.copyWith(
              fontSize: 14.5,
              fontWeight: FontWeight.w400,
              height: 1.2,
            ),
          ),
          SizedBox(width: 2),
          TextButton(
            onPressed: () {
              context.push(AppRoutes.aboutUs);
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 4),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Travel Invest ',
                  style: textTheme.labelSmall?.copyWith(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.primary,
                    height: 1.2,
                  ),
                ),
                Icon(Icons.arrow_forward_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
