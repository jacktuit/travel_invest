import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_invest/gen/assets.gen.dart';

class BuildHeadEmail extends StatelessWidget {
  final String title;

  const BuildHeadEmail({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.png.stars.path),
        Positioned(
          top: 40,
          left: 16,

          child: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 26,
            ),
          ),
        ),

        Positioned(
          bottom: 10,
          left: 16,
          right: 16,
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xff1A1C1E),
              fontSize: 32,
              fontWeight: FontWeight.w700,
              height: 1.3,
            ),
          ),
        ),
      ],
    );
  }
}
