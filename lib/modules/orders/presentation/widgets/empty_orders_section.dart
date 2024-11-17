import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class EmptyOrdersSection extends StatelessWidget {
  const EmptyOrdersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: AppSizes.height24),
                SvgPicture.asset(
                  valueBasedOnTheme<String>(
                    context,
                    light: AppImages.myOrdersEmpty,
                    dark: AppImages.myOrdersEmptyDark,
                  )!,
                ),
                AppSizes.height16,
                Text(
                  translate(context).youDonotHaveAnOrderYet,
                  style: AppTextStyles.bold24(context),
                  textAlign: TextAlign.center,
                ),
                AppSizes.height16,
                Text(
                  translate(context).youDonotHaveAnOngoingOrdersAtThisTime,
                  style: AppTextStyles.medium16(context).copyWith(
                    color: secondaryThemeColor(context),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Expanded(child: AppSizes.height24),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
