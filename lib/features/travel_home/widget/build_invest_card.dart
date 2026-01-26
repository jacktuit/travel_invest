import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_invest/app/router/routes.dart';
import 'package:travel_invest/gen/assets.gen.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';
import 'package:travel_invest/widgets/cards/my_card.dart';

class BuildInvestCard extends StatelessWidget {
  const BuildInvestCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return MyCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Invest in Tourism Development',
            style: textTheme.titleMedium?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.2,
            ),
          ),
          SizedBox(height: 24),
          Text(
            'Receive Discounts',
            style: textTheme.titleMedium?.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1.2,
            ),
          ),
          SizedBox(height: 16),
          _BuildMultiplies(),
          SizedBox(height: 16),
          _PrizeDraws(),
          SizedBox(height: 8),
          MyButton(
            onPressed: () {
              context.push(AppRoutes.discountCards);
            },
            text: 'Start Investing',
          ),
        ],
      ),
    );
  }
}

class _BuildMultiplies extends StatelessWidget {
  const _BuildMultiplies();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _Container(
          n: 10,
          flex: 35,
          start: Color(0xff2E6A2C),
          end: Color(0xff2F772D),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        _Divider(),
        _Container(
          n: 5,
          flex: 22,
          start: Color(0xff2F782D),
          end: Color(0xff33922F),
          borderRadius: BorderRadius.zero,
        ),
        _Divider(),
        _Container(
          n: 2,
          flex: 13,
          start: Color(0xff33942F),
          end: Color(0xff17B3A6),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ],
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: 1,
      height: 48,
      color: theme.dividerColor,
      margin: EdgeInsets.symmetric(horizontal: 2),
    );
  }
}

class _Container extends StatelessWidget {
  const _Container({
    required this.n,
    required this.flex,
    required this.start,
    required this.end,
    required this.borderRadius,
  });

  final int n;
  final int flex;
  final Color start;
  final Color end;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Expanded(
      flex: flex,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'x$n',
            style: textTheme.labelSmall?.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: theme.colorScheme.primary,
              height: 1.4,
            ),
          ),
          Container(
            height: 28,
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              gradient: LinearGradient(
                colors: [start, end],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PrizeDraws extends StatelessWidget {
  const _PrizeDraws();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Participate in',
          style: textTheme.labelSmall?.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.2,
            color: Color(0xff1A1C1E),
          ),
        ),
        SizedBox(width: 2),
        TextButton(
          onPressed: () {},
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
                'Prize Draws ',
                style: textTheme.labelSmall?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: theme.colorScheme.primary,
                  height: 1.2,
                ),
              ),
              Image.asset(Assets.png.prizeGreen.path, width: 24, height: 24),
            ],
          ),
        ),
      ],
    );
  }
}
