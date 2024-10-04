import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class CustomSecondaryElevatedButton extends StatelessWidget {
  const CustomSecondaryElevatedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.backgroundColor,
    this.foregroundColor,
    this.textColor,
  });

  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback onPressed;
  final Color? textColor;
  final String title;

  void _onPressed() {
    futureDelayedNavigator(onPressed);
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 840,
      ),
      child: ElevatedButton(
        onPressed: _onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: backgroundColor ?? AppColors.lavender,
          foregroundColor: foregroundColor ?? AppColors.prussianBlue,
        ),
        child: Text(
          title,
          style: AppTextStyles.bold20(context).copyWith(
            color: textColor ??
                valueBasedOnTheme<Color>(
                  context,
                  light: AppColors.prussianBlue,
                  dark: AppColors.orange,
                ),
          ),
        ),
      ),
    );
  }
}
