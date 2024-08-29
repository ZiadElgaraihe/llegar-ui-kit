import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/auth/domain/entities/welcome_page_view_item_entity.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_text_styles.dart';

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
            style: AppTextStyles.bold40(context),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          welcomePageViewItemEntity.description,
          style: AppTextStyles.medium18(context).copyWith(
            color: AppColors.black,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
