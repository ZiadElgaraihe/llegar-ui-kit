import 'package:flutter/material.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

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
        const Expanded(child: Divider()),
        Text(
          title,
          style: AppTextStyles.bold24(context).copyWith(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
            ),
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
