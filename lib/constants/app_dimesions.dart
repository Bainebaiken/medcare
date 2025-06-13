import 'package:flutter/material.dart';

class AppDimensions {
  static double getScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double getScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  static double getResponsiveWidth(BuildContext context, double percentage) =>
      getScreenWidth(context) * (percentage / 100);

  static double getResponsiveHeight(BuildContext context, double percentage) =>
      getScreenHeight(context) * (percentage / 100);

  static const double basePadding = 16.0;
  static const double baseIconSize = 100.0;
  static const double baseFontSize = 32.0;
}