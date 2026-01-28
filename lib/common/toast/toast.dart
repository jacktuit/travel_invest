import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class AppToast {
  static void showSuccess(BuildContext context, String message) {
    toastification.dismissAll(delayForAnimation: true);

    toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.flat,
      autoCloseDuration: const Duration(seconds: 5),
      title: Text(
        message,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      alignment: Alignment.topRight,
      animationDuration: const Duration(milliseconds: 300),
      animationBuilder: (context, animation, alignment, child) {
        return FadeTransition(opacity: animation, child: child);
      },
      showIcon: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      applyBlurEffect: true,
      pauseOnHover: true,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color(0x07000000),
          blurRadius: 16,
          offset: Offset(0, 16),
        ),
      ],
    );
  }

  static void showError(BuildContext context, String message) {
    toastification.dismissAll(delayForAnimation: true);

    toastification.show(
      context: context,
      type: ToastificationType.error,
      style: ToastificationStyle.flat,
      autoCloseDuration: const Duration(seconds: 5),
      title: Text(
        message,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      alignment: Alignment.topRight,
      animationDuration: const Duration(milliseconds: 300),
      animationBuilder: (context, animation, alignment, child) {
        return FadeTransition(opacity: animation, child: child);
      },
      showIcon: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      applyBlurEffect: true,
      pauseOnHover: true,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color(0x07000000),
          blurRadius: 16,
          offset: Offset(0, 16),
        ),
      ],
    );
  }

  static void showInfo(BuildContext context, String message) {
    toastification.dismissAll(delayForAnimation: true);

    toastification.show(
      context: context,
      type: ToastificationType.info,
      style: ToastificationStyle.flat,
      autoCloseDuration: const Duration(seconds: 5),
      title: Text(
        message,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      alignment: Alignment.topRight,
      animationDuration: const Duration(milliseconds: 300),
      animationBuilder: (context, animation, alignment, child) {
        return FadeTransition(opacity: animation, child: child);
      },
      icon: Icon(Icons.info, color: Colors.orange),
      showIcon: true,
      backgroundColor: Color(0xffF2FFF5),
      foregroundColor: Colors.black,
      applyBlurEffect: true,
      pauseOnHover: true,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color(0x07000000),
          blurRadius: 16,
          offset: Offset(0, 16),
        ),
      ],
    );
  }
}
