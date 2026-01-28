import 'package:flutter/material.dart';

class EmptyPartnersWidget extends StatelessWidget {
  const EmptyPartnersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off_rounded, size: 80, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text(
            'Hech narsa topilmadi',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Boshqa qidiruv so\'rovini sinab ko\'ring',
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }
}
