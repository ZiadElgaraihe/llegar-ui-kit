import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.title,
    this.builder,
  });

  final Widget Function(String item, bool isSelected)? builder;
  final bool isSelected;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: isSelected ? mainThemeColor(context) : null,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: mainThemeColor(context),
            width: 2,
          ),
        ),
        child: (builder != null)
            ? builder!(title, isSelected)
            : Text(
                title,
                style: AppTextStyles.bold20(context).copyWith(
                  color: isSelected ? AppColors.white : null,
                ),
              ),
      ),
    );
  }
}
