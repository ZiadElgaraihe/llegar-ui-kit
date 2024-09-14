import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/welcome/domain/entities/welcome_page_view_item_entity.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_sizes.dart';
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
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        RepaintBoundary(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: SvgPicture.asset(
              welcomePageViewItemEntity.image,
              height:
                  (width < AppSizes.mediumtBreakpoint) ? height * 0.4 : null,
            ),
          ),
        ),
        AppSizes.height16,
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            welcomePageViewItemEntity.title,
            style: (width < AppSizes.mediumtBreakpoint)
                ? AppTextStyles.bold32(context, responsive: false)
                : AppTextStyles.bold40(context, responsive: false),
          ),
        ),
        AppSizes.height16,
        Text(
          welcomePageViewItemEntity.description,
          style: (width < AppSizes.mediumtBreakpoint
                  ? AppTextStyles.medium14(context, responsive: false)
                  : AppTextStyles.medium18(context, responsive: false))
              .copyWith(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            ),
          ),
          textAlign: TextAlign.center,
        ),
        AppSizes.height16,
      ],
    );
  }
}
