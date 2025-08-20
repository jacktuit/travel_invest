import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travel_invest/widgets/buttons/my_secondary_button.dart';
import 'package:travel_invest/widgets/cards/my_card.dart';

class BuildInviteCard extends StatelessWidget {
  const BuildInviteCard({super.key});

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
            'Invite Friends',
            style: textTheme.titleMedium?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.2,
            ),
          ),
          _Percent(),
          _PeopleAndButton(),
        ],
      ),
    );
  }
}

class _Percent extends StatelessWidget {
  const _Percent();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 16, 25, 16),
      child: RichText(
        text: TextSpan(
          text: "Invite friends to the program, you'll receive ",
          style: textTheme.titleMedium?.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.24,
          ),
          children: [
            TextSpan(
              text: '5%',
              style: textTheme.titleMedium?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.primary,
                height: 1.24,
              ),
            ),
            TextSpan(text: ' of their payout.'),
          ],
        ),
      ),
    );
  }
}

const _images = [
  'https://images.unsplash.com/photo-1654110455429-cf322b40a906?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGF2YXRhcnxlbnwwfHwwfHx8MA%3D%3D',
  'https://photoavatarmaker.com/wp-content/uploads/2025/04/linkedin-avatar-sample.jpeg',
  'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDI3fHx8ZW58MHx8fHx8',
  'https://lucid.content-delivery-one.com/cdn-cgi/image/w=600,format=auto,metadata=none/66c445a35f781.png',
];

const double _imageSize = 40;

class _PeopleAndButton extends StatelessWidget {
  const _PeopleAndButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Stack(
            children: [
              _Image(url: _images[0], left: 0),
              _Image(url: _images[1], left: _imageSize - 10),
              _Image(url: _images[2], left: 2 * _imageSize - 20),
              _Image(url: _images[3], left: 3 * _imageSize - 30),
            ],
          ),
        ),
        Expanded(
          child: MySecondaryButton(onPressed: () {}, text: 'Invite Friends'),
        ),
      ],
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({required this.url, required this.left});

  final String url;
  final double left;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.only(left: left),
      child: Container(
        width: _imageSize,
        height: _imageSize,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: theme.cardColor,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: CachedNetworkImage(
            imageUrl: url,
            width: _imageSize - 4,
            height: _imageSize - 4,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
