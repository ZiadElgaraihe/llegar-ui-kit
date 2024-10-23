import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class InboxItemListTileTrailing extends StatelessWidget {
  const InboxItemListTileTrailing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 28,
          width: 28,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: mainThemeColor(context),
            shape: BoxShape.circle,
          ),
          child: Text(
            '4',
            style: AppTextStyles.bold12(context).copyWith(
              fontFamily: AppStrings.interFontFamily,
              color: AppColors.white,
            ),
          ),
        ),
        const Spacer(),
        Text(
          '05:12',
          style: AppTextStyles.regular12(context).copyWith(
            fontFamily: AppStrings.interFontFamily,
          ),
        ),
      ],
    );
  }
}
