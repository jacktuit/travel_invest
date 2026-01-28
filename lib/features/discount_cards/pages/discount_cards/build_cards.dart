import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/gen/assets.gen.dart';

import '../../../../common/extensions/number_extensions.dart';

class BuildCards extends ConsumerWidget {
  const BuildCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Card(imagePath: Assets.png.tajmahal.path, calculate: "10X"),
          Card(imagePath: Assets.png.whiteMosque.path, calculate: "5X"),
          Card(imagePath: Assets.png.twinBuildings.path, calculate: "2X"),
        ],
      ),
    );
  }

  Widget Card({required String imagePath, required String calculate}) {
    return Container(
      width: double.infinity,
      height: 245,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.svg.travelInvestLogoSvg),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        bloorCard(title: "Hotels"),
                        bloorCard(title: "Shops"),
                        bloorCard(title: "Transport"),
                      ],
                    ),
                    4.vertical,
                    Row(
                      children: [
                        bloorCard(title: "Tours"),
                        bloorCard(title: "Attractions"),
                      ],
                    ),
                  ],
                ),
                Text(
                  calculate,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget bloorCard({required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),

              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
