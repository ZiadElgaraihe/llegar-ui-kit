import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/welcome/domain/entities/how_did_you_know_us_item_entity.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class HowDidYouKnowUsButton extends StatelessWidget {
  const HowDidYouKnowUsButton({
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
          color: isActive ? mainThemeColor(context) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: mainThemeColor(context),
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
