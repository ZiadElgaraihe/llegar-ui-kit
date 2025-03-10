import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/welcome/domain/entities/welcome_page_view_item_entity.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class WelcomePageViewItem extends StatelessWidget {
  const WelcomePageViewItem({
    super.key,
    required this.welcomePageViewItemEntity,
  });

  final WelcomePageViewItemEntity welcomePageViewItemEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RepaintBoundary(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: SvgPicture.asset(welcomePageViewItemEntity.image),
          ),
        ),
        AppSizes.height16,
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            welcomePageViewItemEntity.title,
            style: AppTextStyles.bold40(context, responsive: false),
          ),
        ),
        AppSizes.height16,
        Text(
          welcomePageViewItemEntity.description,
          style: AppTextStyles.medium18(context, responsive: false).copyWith(
            color: secondaryThemeColor(context),
          ),
          textAlign: TextAlign.center,
        ),
        AppSizes.height16,
      ],
    );
  }
}
