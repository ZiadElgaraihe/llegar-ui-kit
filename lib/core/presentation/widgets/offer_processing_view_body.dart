import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class OfferProcessingViewBody extends StatelessWidget {
  const OfferProcessingViewBody({super.key});

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
                    light: AppImages.offerProcessing,
                    dark: AppImages.offerProcessingDark,
                  )!,
                ),
                AppSizes.height8,
                Text(
                  translate(context).yourOfferIsBeingProcessed,
                  style: AppTextStyles.bold32(context),
                  textAlign: TextAlign.center,
                ),
                AppSizes.height8,
                Text(
                  translate(context).pleaseCheckNotificationsPeriodically,
                  style: AppTextStyles.bold16(context).copyWith(
                    color: secondaryThemeColor(context),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Expanded(child: AppSizes.height24),
                CustomElevatedButton(
                  title: translate(context).backToHome,
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      AppRoutes.navBarView,
                    );
                  },
                ),
                AppSizes.height24,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
