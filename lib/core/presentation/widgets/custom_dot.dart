import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({
    super.key,
    required this.isActive,
    required this.size,
    this.inactiveColor,
  });

  final bool isActive;
  final double size;
  final Color? inactiveColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: size,
      width: isActive ? size * 4 : size,
      decoration: BoxDecoration(
        color: isActive
            ? valueBasedOnTheme<Color>(
                context,
                light: AppColors.prussianBlue,
                dark: AppColors.orange,
              )
            : inactiveColor ?? AppColors.lightGrey,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
