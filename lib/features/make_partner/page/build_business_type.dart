import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/app/router/routes.dart';
import 'package:travel_invest/app/theme/colors.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';

class BuildBusinessType extends ConsumerStatefulWidget {
  const BuildBusinessType({super.key});

  @override
  BuildBusinessTypeState createState() => BuildBusinessTypeState();
}

class BuildBusinessTypeState extends ConsumerState<BuildBusinessType> {
  String? selectedBusinessType;

  final List<String> businessTypes = [
    'Hotel',
    'Restaurant',
    'Cafe',
    'Bar',
    'Spa',
    'Gym',
    'Pool',
    'Airways',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(backgroundColor: Colors.grey[200], elevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.vertical,
            const Center(
              child: Text(
                'Select your Bussines type',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),

            16.vertical,

            Expanded(
              child: ListView.builder(
                itemCount: businessTypes.length,
                itemBuilder: (context, index) {
                  final businessType = businessTypes[index];
                  final isSelected = selectedBusinessType == businessType;

                  return ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    onTap: () {
                      setState(() {
                        selectedBusinessType = businessType;
                      });
                    },

                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          businessType,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isSelected
                                  ? AppColors.primary
                                  : Colors.grey[300]!,
                              width: 2,
                            ),
                            color: Colors.white,
                          ),
                          child: isSelected
                              ? Center(
                                  child: Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                )
                              : null,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            MyButton(
              isDisabled: selectedBusinessType == null,
              onPressed: () {
                context.push(AppRoutes.companyInfoSourcePage);
              },
              text: "Continue",
            ),
            16.vertical,
          ],
        ),
      ),
    );
  }
}
