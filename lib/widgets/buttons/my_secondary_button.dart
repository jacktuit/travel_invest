import 'package:flutter/material.dart';
import 'package:travel_invest/app/theme/colors.dart';

class MySecondaryButton extends StatelessWidget {
  const MySecondaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.height = 42,
  });

  final void Function()? onPressed;
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: AppColors.primary, width: 1),
        ),
        fixedSize: Size.fromHeight(height),
        maximumSize: Size.fromHeight(height),
        minimumSize: Size.fromHeight(height),
        elevation: 0,
        backgroundColor: Color(0xffF2FFF5),
        foregroundColor: AppColors.primary,
        shadowColor: Colors.transparent,
        surfaceTintColor: Color(0xffF2FFF5),
        padding: EdgeInsets.zero,
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 1.4,
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
