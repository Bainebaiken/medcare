import 'package:flutter/material.dart';
import '../Constants/app_color.dart';

class ElevatedButtonWidget {
  static const double buttonPaddingHorizontal = 50.0;
  static const double buttonPaddingVertical = 15.0;

  static ElevatedButton buildElevatedButton({
    required VoidCallback onPressed,
    required String text,
    Color? color,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.primaryColor,
        padding: EdgeInsets.symmetric(
          horizontal: buttonPaddingHorizontal,
          vertical: buttonPaddingVertical,
        ),
      ),
      child: Text(text),
    );
  }
}