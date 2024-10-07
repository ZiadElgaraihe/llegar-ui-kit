import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class OrDividerRow extends StatelessWidget {
  const OrDividerRow({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            ),
          ),
        ),
        Text(
          title,
          style: AppTextStyles.bold24(context).copyWith(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
