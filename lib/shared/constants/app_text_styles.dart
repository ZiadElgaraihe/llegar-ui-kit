import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

///This class contains all text styles depending on font size and weight
abstract class AppTextStyles {
  static TextStyle medium10(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 10) : 10,
        fontWeight: FontWeight.w500,
      );

  static TextStyle regular11(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 11) : 11,
        fontWeight: FontWeight.w400,
      );

  static TextStyle regular12(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 12) : 12,
        fontWeight: FontWeight.w400,
      );

  static TextStyle medium12(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 12) : 12,
        fontWeight: FontWeight.w500,
      );

  static TextStyle bold12(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 12) : 12,
        fontWeight: FontWeight.w700,
      );

  static TextStyle medium14(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 14) : 14,
        fontWeight: FontWeight.w500,
      );

  static TextStyle bold14(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 14) : 14,
        fontWeight: FontWeight.w700,
      );

  static TextStyle medium15(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 15) : 15,
        fontWeight: FontWeight.w500,
      );

  static TextStyle regular16(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 16) : 16,
        fontWeight: FontWeight.w400,
      );

  static TextStyle medium16(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 16) : 16,
        fontWeight: FontWeight.w500,
      );

  static TextStyle semiBold16(BuildContext context,
          {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 16) : 16,
        fontWeight: FontWeight.w600,
      );

  static TextStyle bold16(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 16) : 16,
        fontWeight: FontWeight.w700,
      );

  static TextStyle medium18(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 18) : 18,
        fontWeight: FontWeight.w500,
      );

  static TextStyle regular20(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 20) : 20,
        fontWeight: FontWeight.w400,
      );

  static TextStyle medium20(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 20) : 20,
        fontWeight: FontWeight.w500,
      );

  static TextStyle semiBold20(BuildContext context,
          {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 20) : 20,
        fontWeight: FontWeight.w600,
      );

  static TextStyle bold20(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 20) : 20,
        fontWeight: FontWeight.w700,
      );

  static TextStyle semiBold24(BuildContext context,
          {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 24) : 24,
        fontWeight: FontWeight.w600,
      );

  static TextStyle bold24(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 24) : 24,
        fontWeight: FontWeight.w700,
      );

  static TextStyle bold28(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 28) : 28,
        fontWeight: FontWeight.w700,
      );

  static TextStyle bold32(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 32) : 32,
        fontWeight: FontWeight.w700,
      );

  static TextStyle bold40(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 40) : 40,
        fontWeight: FontWeight.w700,
      );

  static TextStyle bold48(BuildContext context, {bool responsive = false}) =>
      TextStyle(
        fontSize:
            responsive ? _getResponsiveFontSize(context, fontSize: 48) : 48,
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
    //width < 600
    if (width < AppSizes.mediumtBreakpoint) {
      return width / 400;
    }
    //600 ≤ width < 840
    else if (width < AppSizes.expandedBreakpoint) {
      return width / 720;
    }
    //840 ≤ width < 1200
    else if (width < AppSizes.largeBreakpoint) {
      return width / 1020;
    }
    //1200 ≤ width < 1600
    else if (width < AppSizes.extraLargeBreakpoint) {
      return width / 1400;
    }
    //1600 ≤ width
    else {
      return width / 1750;
    }
  }
}
