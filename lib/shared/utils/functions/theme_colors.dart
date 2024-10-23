import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

///This function return prussian blue in light mode and orange in dark mode
Color mainThemeColor(BuildContext context) {
  return valueBasedOnTheme<Color>(
    context,
    light: AppColors.prussianBlue,
    dark: AppColors.orange,
  )!;
}

///This function return black in light mode and white in dark mode
Color secondaryThemeColor(BuildContext context) {
  return valueBasedOnTheme<Color>(
    context,
    light: AppColors.black,
    dark: AppColors.white,
  )!;
}
