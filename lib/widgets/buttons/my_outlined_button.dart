import 'package:flutter/material.dart';
import 'package:travel_invest/app/theme/extensions.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 48,
    this.borderRadius = 10,
  });

  final String text;
  final void Function() onPressed;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        fixedSize: Size.fromHeight(height),
        maximumSize: Size.fromHeight(height),
        minimumSize: Size.fromHeight(height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        side: BorderSide(color: context.colorScheme.primary),
      ),
      child: Text(text),
    );
  }
}
