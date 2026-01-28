import 'package:flutter/material.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';

import '../../../app/theme/colors.dart';
import 'complete_flow_pages.dart';

class CompanyInfoSourcePage extends StatefulWidget {
  const CompanyInfoSourcePage({Key? key}) : super(key: key);

  @override
  State<CompanyInfoSourcePage> createState() => _CompanyInfoSourcePageState();
}

class _CompanyInfoSourcePageState extends State<CompanyInfoSourcePage> {
  final List<String> platforms = [
    'Booking.com',
    'Tripadvisor.com',
    'Expedia.com',
    'Airbnb.com',
    'Kayak.com',
    'Trivago.com',
    'Hotels.com',
    'Orbitz.com',
  ];

  final List<String> selectedPlatforms = [];

  void togglePlatform(String platform) {
    setState(() {
      if (selectedPlatforms.contains(platform)) {
        selectedPlatforms.remove(platform);
      } else {
        selectedPlatforms.add(platform);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Business',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Where we can find info about your company?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: platforms.length,
                itemBuilder: (context, index) {
                  final platform = platforms[index];
                  final isSelected = selectedPlatforms.contains(platform);

                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 4,
                    ),
                    title: Text(
                      platform,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: isSelected ? AppColors.primary : Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: isSelected
                              ? AppColors.primary
                              : Colors.grey[300]!,
                          width: 2,
                        ),
                      ),
                      child: isSelected
                          ? const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 18,
                            )
                          : null,
                    ),
                    onTap: () => togglePlatform(platform),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SearchingPage(selectedPlatforms: selectedPlatforms),
                  ),
                );
              },
              text: 'Continue',
              isDisabled: selectedPlatforms.isEmpty,
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
