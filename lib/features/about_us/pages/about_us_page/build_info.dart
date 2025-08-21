import 'package:flutter/material.dart';
import 'package:travel_invest/app/theme/extensions.dart';

class BuildInfo extends StatelessWidget {
  const BuildInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Text(
        '''  
        Dubai is a vibrant city known for its stunning skyline, luxurious shopping, and rich cultural heritage. From the iconic Burj Khalifa to the bustling souks, there's something for everyone. Visitors can enjoy thrilling desert safaris, relax on beautiful beaches, and explore world-class dining options.
        Dubai is a vibrant city known for its stunning skyline, luxurious shopping, and rich cultural heritage. From the iconic Burj Khalifa to the bustling souks, there's something for everyone. Visitors can enjoy thrilling desert safaris, relax on beautiful beaches, and explore world-class dining options.
        With its unique blend of tradition and modernity, Dubai is a must-visit destination.''',

        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 16,
          color: context.myColors.icon,
          fontWeight: FontWeight.w400,
          height: 1.2,
        ),
      ),
    );
  }
}
