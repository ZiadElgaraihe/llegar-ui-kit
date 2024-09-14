import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/welcome/domain/entities/how_did_you_know_us_item_entity.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class HowDidYouKnowUsMobileLayoutButton extends StatelessWidget {
  const HowDidYouKnowUsMobileLayoutButton({
    super.key,
    required this.howDidYouKnowUsItemEntity,
    required this.isActive,
    required this.onTap,
  });

  final HowDidYouKnowUsItemEntity howDidYouKnowUsItemEntity;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: isActive
              ? valueBasedOnTheme<Color>(
                  context,
                  light: AppColors.prussianBlue,
                  dark: AppColors.orange,
                )!
              : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.prussianBlue,
              dark: AppColors.orange,
            )!,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(howDidYouKnowUsItemEntity.icon),
            AppSizes.width16,
            Text(
              howDidYouKnowUsItemEntity.title,
              style: AppTextStyles.bold20(context).copyWith(
                color: isActive ? AppColors.white : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
