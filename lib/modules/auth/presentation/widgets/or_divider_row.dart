import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

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
            color: secondaryThemeColor(context),
          ),
        ),
        Text(
          title,
          style: AppTextStyles.bold24(context).copyWith(
            color: secondaryThemeColor(context),
          ),
        ),
        Expanded(
          child: Divider(
            color: secondaryThemeColor(context),
          ),
        ),
      ],
    );
  }
}
