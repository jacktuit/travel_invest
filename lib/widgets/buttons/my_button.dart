import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isDisabled = false,
    this.isLoading = false,
    this.width = double.infinity,
    this.height = 48,
    this.fontSize = 14,
  });

  final void Function() onPressed;
  final String text;
  final bool isDisabled;
  final bool isLoading;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: isDisabled
          ? null
          : BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.transparent],
              ),
            ),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: isDisabled
              ? null
              : LinearGradient(
                  colors: [Color(0xff1D61E7), Color(0xff375DFB)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
          boxShadow: isDisabled
              ? null
              : [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 0,
                    color: Color(0xff375DFB),
                    offset: Offset(0, 0),
                  ),
                  BoxShadow(
                    spreadRadius: 0,
                    blurRadius: 2,
                    color: Color(0xff253EA7).withValues(alpha: .48),
                    offset: Offset(0, 1),
                  ),
                ],
        ),
        child: ElevatedButton(
          onPressed: isDisabled
              ? null
              : () {
                  onPressed();
                },
          style: ElevatedButton.styleFrom(
            fixedSize: Size(width, height),
            maximumSize: Size(width, height),
            minimumSize: Size(width, height),
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            foregroundColor: Colors.white,
            disabledBackgroundColor: Color(0xffEDF1F3),
            disabledForegroundColor: Color(0xffACB5BB),
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            visualDensity: VisualDensity.standard,
            textStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              height: 1.4,
            ),
          ),
          child: isLoading
              ? SizedBox(
                  width: height / 2,
                  height: height / 2,
                  child: CircularProgressIndicator(color: Colors.white),
                )
              : Text(text, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
