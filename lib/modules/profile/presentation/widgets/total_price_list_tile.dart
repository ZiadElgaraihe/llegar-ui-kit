import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class TotalPriceListTile extends StatelessWidget {
  const TotalPriceListTile({
    super.key,
    required this.title,
    required this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: AppTextStyles.medium16(context).copyWith(
          color: secondaryThemeColor(context),
        ),
      ),
      trailing: Text(
        price,
        style: AppTextStyles.medium16(context).copyWith(
          color: secondaryThemeColor(context),
        ),
      ),
    );
  }
}
