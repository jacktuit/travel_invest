import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travel_invest/common/toast/toast.dart';
import 'package:travel_invest/common/utils/utils.dart';
import 'package:travel_invest/features/home/notifiers/navigation_notifier.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';

import '../../../app/router/routes.dart';

class DiscountSelectionPage extends ConsumerStatefulWidget {
  const DiscountSelectionPage({Key? key}) : super(key: key);

  @override
  ConsumerState<DiscountSelectionPage> createState() =>
      _DiscountSelectionPageState();
}

class _DiscountSelectionPageState extends ConsumerState<DiscountSelectionPage> {
  String? selectedDiscount;

  final List<String> discountOptions = [
    '5%',
    '10%',
    '15%',
    '20%',
    '30%',
    '40%',
    '50%',
    '70%',
    '90%',
  ];

  DiscountSize _getDiscountSize(String discount) {
    final value = int.parse(discount.replaceAll('%', ''));

    double width, height, fontSize;

    if (value <= 5) {
      width = 70;
      height = 45;
      fontSize = 16;
    } else if (value <= 20) {
      width = 80;
      height = 47;
      fontSize = 18;
    } else if (value <= 40) {
      width = 90;
      height = 40;
      fontSize = 20;
    } else if (value <= 50) {
      width = 100;
      height = 50;
      fontSize = 22;
    } else if (value <= 70) {
      width = 110;
      height = 55;
      fontSize = 26;
    } else {
      // 90%
      width = 120;
      height = 60;
      fontSize = 30;
    }

    return DiscountSize(width: width, height: height, fontSize: fontSize);
  }

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
            const SizedBox(height: 16),
            const Text(
              'How much discount would you like to offer on Travel Invest discount cards?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),

            Expanded(
              child: Center(
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  alignment: WrapAlignment.center,
                  children: discountOptions.map((discount) {
                    final isSelected = selectedDiscount == discount;
                    final size = _getDiscountSize(discount);

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDiscount = discount;
                        });
                      },
                      child: Container(
                        width: size.width,
                        height: size.height,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(size.width * 0.3),
                          border: Border.all(
                            color: isSelected
                                ? Colors.green[700]!
                                : Colors.grey[300]!,
                            width: isSelected ? 2.5 : 1.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            discount,
                            style: TextStyle(
                              fontSize: size.fontSize,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.w600,
                              color: isSelected
                                  ? Colors.green[700]
                                  : Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 16),
            MyButton(
              isDisabled: selectedDiscount == null,
              onPressed: () {
                AppToast.showSuccess(
                  context,
                  "Your request has been received. We will notify you of the response via notification. Thank you.",
                );
                ref.read(navigationProvider.notifier).change(0);
                Utils.vibrate();

                context.go(AppRoutes.home);
              },
              text: "Continue",
            ),

            const SizedBox(height: 12),
            TextButton(
              onPressed: () {
                AppToast.showSuccess(
                  context,
                  "Your request has been received. We will notify you of the response via notification. Thank you.",
                );
                Utils.vibrate();
                ref.read(navigationProvider.notifier).change(0);

                context.go(AppRoutes.home);
              },
              child: Text(
                'I don\'t want to offer a discount right now.',
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class DiscountSize {
  final double width;
  final double height;
  final double fontSize;

  DiscountSize({
    required this.width,
    required this.height,
    required this.fontSize,
  });
}
