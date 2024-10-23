import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class FundAmountButton extends StatelessWidget {
  const FundAmountButton({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.title,
  });

  final bool isSelected;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 39,
        width: 114,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? secondaryThemeColor(context) : null,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: secondaryThemeColor(context),
            width: 2,
          ),
        ),
        child: Text(
          '\$$title',
          style: AppTextStyles.bold24(context).copyWith(
            color: isSelected
                ? valueBasedOnTheme<Color>(
                    context,
                    light: AppColors.white,
                    dark: AppColors.prussianBlue,
                  )!
                : secondaryThemeColor(context),
          ),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
