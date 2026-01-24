import 'package:flutter/material.dart';
import 'package:travel_invest/gen/assets.gen.dart';

class BuildCards extends StatelessWidget {
  const BuildCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 288,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            _Card(
              imagePath: Assets.png.cardGreen.path,
              price: 20,
              name: 'Double card',
              multiplies: 2,
            ),
            _Card(
              imagePath: Assets.png.cardBlack.path,
              price: 50,
              name: 'Fivefold card',
              multiplies: 5,
            ),
            _Card(
              imagePath: Assets.png.cardBrown.path,
              price: 100,
              name: 'Tenfold card',
              multiplies: 10,
            ),
          ],
        ),
      ),
    );

    // return CarouselSlider(
    //   options: CarouselOptions(
    //     enableInfiniteScroll: false,
    //     viewportFraction: .83,
    //     padEnds: false,
    //     disableCenter: true,
    //     enlargeCenterPage: false,
    //     pageSnapping: true,
    //     reverse: false,
    //     autoPlay: false,
    //     animateToClosest: true,
    //     scrollDirection: Axis.horizontal,
    //     aspectRatio: .94,
    //     initialPage: 0,
    //   ),
    //   items: [
    //     _Card(imagePath: Assets.png.cardGreen.path),
    //     _Card(imagePath: Assets.png.cardBlack.path),
    //     _Card(imagePath: Assets.png.cardBrown.path),
    //   ],
    // );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    required this.imagePath,
    required this.price,
    required this.name,
    required this.multiplies,
  });

  final String imagePath;
  final int price;
  final String name;
  final int multiplies;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(imagePath),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  r'$'
                  '$price',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white.withValues(alpha: .9),
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Emirates x$multiplies',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16),
            child: Image.asset(Assets.png.logoWithName.path, width: 97.13),
          ),
        ),
      ],
    );
  }
}
