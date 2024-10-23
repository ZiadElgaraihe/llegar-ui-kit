import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class PackageFeatureListTile extends StatelessWidget {
  const PackageFeatureListTile({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        Icons.check_circle_rounded,
        color: mainThemeColor(context),
      ),
      title: Text(
        title,
        style: AppTextStyles.medium14(context).copyWith(
          color: secondaryThemeColor(context),
        ),
      ),
    );
  }
}
