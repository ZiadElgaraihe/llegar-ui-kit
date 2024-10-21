import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class NoResultsFoundSection extends StatelessWidget {
  const NoResultsFoundSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Expanded(child: AppSizes.height24),
              SvgPicture.asset(
                valueBasedOnTheme<String>(
                  context,
                  light: AppImages.notFound,
                  dark: AppImages.notFoundDark,
                )!,
              ),
              AppSizes.height16,
              Text(
                translate(context).notFound,
                style: AppTextStyles.bold20(context),
              ),
              AppSizes.height24,
              Text(
                translate(context).sorryTheKeywordYouEnteredCannotBeFound,
                style: AppTextStyles.semiBold16(context).copyWith(
                  color: valueBasedOnTheme<Color>(
                    context,
                    light: AppColors.black,
                    dark: AppColors.white,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              const Expanded(child: AppSizes.height24),
            ],
          ),
        ),
      ],
    );
  }
}
