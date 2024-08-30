import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/welcome/domain/entities/welcome_page_view_item_entity.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

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
            child: SvgPicture.asset(
              welcomePageViewItemEntity.image,
            ),
          ),
        ),
        const SizedBox(height: 16),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            welcomePageViewItemEntity.title,
            style: AppTextStyles.bold40(context).copyWith(
              color: valueBasedOnTheme<Color>(
                context,
                dark: AppColors.orange,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          welcomePageViewItemEntity.description,
          style: AppTextStyles.medium18(context).copyWith(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
            ),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
