import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';

import '../../../gen/assets.gen.dart';
import 'build_discount_selection_page.dart';
import 'complete_flow_pages.dart';

class BuildChooseResultPage extends StatefulWidget {
  const BuildChooseResultPage({Key? key}) : super(key: key);

  @override
  State<BuildChooseResultPage> createState() => _BuildChooseResultPageState();
}

class _BuildChooseResultPageState extends State<BuildChooseResultPage> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Text(
              'Result',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'We were able to find 2 of your services,\nbusinesses or companies',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                height: 1.4,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildSelectableBusinessCard(
                    0,
                    'eten & drinker cafe',
                    '199 Oakway Lane, Woodland Hills, CA 91303',
                    Assets.png.cafeTes.path,
                  ),
                  const SizedBox(height: 16),
                  _buildSelectableBusinessCard(
                    1,
                    'KlippKroog restaurant',
                    '42 Barnsby Street, Beverly Hills, CA 90210',
                    Assets.png.cafeTes.path,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            MyButton(
              isDisabled: selectedIndex == null,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DiscountSelectionPage(),
                  ),
                );
              },
              text: 'Select and continue',
            ),
            40.vertical,
          ],
        ),
      ),
    );
  }

  Widget _buildSelectableBusinessCard(
    int index,
    String name,
    String address,
    String imagePath,
  ) {
    final isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? Colors.green[700]! : Colors.transparent,
            width: 3,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: Image.asset(imagePath),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          address,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
