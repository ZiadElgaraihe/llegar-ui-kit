import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class RatingRowWidget extends StatelessWidget {
  const RatingRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          AppIcons.star,
          colorFilter: valueBasedOnTheme<ColorFilter>(
            context,
            dark: const ColorFilter.mode(
              AppColors.orange,
              BlendMode.srcATop,
            ),
          ),
        ),
        AppSizes.width4,
        Text(
          '4',
          style: AppTextStyles.semiBold20(context),
        ),
      ],
    );
  }
}
