import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class CustomAnimatedDropdown<ItemsType> extends StatelessWidget {
  const CustomAnimatedDropdown({
    super.key,
    required this.hintText,
    required this.items,
    this.onChanged,
    this.validator,
    this.visibility,
  });

  final String hintText;
  final List<ItemsType> items;
  final void Function(ItemsType? newValue)? onChanged;
  final String? Function(ItemsType? value)? validator;
  final void Function(bool isListOpened)? visibility;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(filled: false),
      ),
      child: CustomDropdown<ItemsType>(
        items: items,
        hintText: hintText,
        onChanged: onChanged,
        validator: validator,
        closedHeaderPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        expandedHeaderPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        visibility: visibility,
        decoration: CustomDropdownDecoration(
          closedFillColor: AppColors.white,
          errorStyle: AppTextStyles.medium10(context).copyWith(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.red,
              dark: AppColors.lightRed,
            ),
            fontFamily: AppStrings.interFontFamily,
          ),
          hintStyle: AppTextStyles.medium14(context).copyWith(
            fontFamily: AppStrings.interFontFamily,
            color: AppColors.grey,
          ),
          headerStyle: AppTextStyles.medium14(context).copyWith(
            fontFamily: AppStrings.interFontFamily,
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.prussianBlue,
              dark: AppColors.orange,
            ),
          ),
          listItemStyle: AppTextStyles.medium14(context).copyWith(
            fontFamily: AppStrings.interFontFamily,
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.prussianBlue,
              dark: AppColors.orange,
            ),
          ),
          closedSuffixIcon: const Icon(
            Icons.arrow_drop_down_rounded,
            color: AppColors.grey,
          ),
          expandedSuffixIcon: const Icon(
            Icons.arrow_drop_down_rounded,
            color: AppColors.grey,
          ),
          closedBorderRadius: BorderRadius.circular(8),
          expandedBorderRadius: BorderRadius.circular(8),
          closedErrorBorderRadius: BorderRadius.circular(8),
          closedBorder: Border.all(color: AppColors.grey),
          expandedBorder: Border.all(color: AppColors.yellow),
          closedErrorBorder: Border.all(color: AppColors.red),
        ),
      ),
    );
  }
}
