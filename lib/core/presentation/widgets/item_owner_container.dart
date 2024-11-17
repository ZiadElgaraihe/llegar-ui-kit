import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/value_based_on_locale.dart';

class ItemOwnerContainer extends StatelessWidget {
  const ItemOwnerContainer({
    super.key,
    required this.isMyItem,
  });

  final bool isMyItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      decoration: BoxDecoration(
        color: AppColors.antiFlashWhite,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: mainThemeColor(context),
            offset: const Offset(0, 4),
            blurRadius: 2,
            spreadRadius: 0,
          ),
        ],
      ),
      child: OverflowBar(
        spacing: 8,
        overflowSpacing: 8,
        alignment: MainAxisAlignment.start,
        overflowAlignment: OverflowBarAlignment.center,
        children: [
          const ProfilePhoto(
            size: 88,
            side: BorderSide.none,
          ),
          Column(
            children: [
              Text(
                isMyItem ? 'Nour Mohamed' : 'Fareed Khaled',
                style: AppTextStyles.regular20(context).copyWith(
                  fontFamily: AppStrings.interFontFamily,
                ),
              ),
              AppSizes.height8,
              Text(
                valueBasedOnLocale<String>(
                  context,
                  ltr: '44 minutes ago',
                  rtl: 'منذ 44 دقيقة',
                )!,
                style: AppTextStyles.regular14(context).copyWith(
                  fontFamily: AppStrings.interFontFamily,
                  color: AppColors.blue,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
