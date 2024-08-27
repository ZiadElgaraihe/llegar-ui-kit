import 'package:flutter/material.dart';
import 'package:llegar/utils/app_sizes.dart';

///This class contains all text styles depending on font size and weight
abstract class AppTextStyles {
  static TextStyle medium15(BuildContext context) => TextStyle(
        fontSize: _getResponsiveFontSize(context, fontSize: 15),
        fontWeight: FontWeight.w500,
      );
      
  static TextStyle medium18(BuildContext context) => TextStyle(
        fontSize: _getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w500,
      );

  static TextStyle bold20(BuildContext context) => TextStyle(
        fontSize: _getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500,
      );

  static TextStyle bold24(BuildContext context) => TextStyle(
        fontSize: _getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w700,
      );

  static TextStyle bold40(BuildContext context) => TextStyle(
        fontSize: _getResponsiveFontSize(context, fontSize: 40),
        fontWeight: FontWeight.w700,
      );

  static double _getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    double scaleFactor = _getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double _getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width <= AppSizes.tabletBreakpoint) {
      return width / 400;
    } else if (width <= AppSizes.webBreakpoint) {
      return width / 700;
    } else {
      return width / 1000;
    }
  }
}
