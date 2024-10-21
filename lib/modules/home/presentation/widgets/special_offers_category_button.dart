import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class SpecialOffersCategoryButton extends StatelessWidget {
  const SpecialOffersCategoryButton({
    super.key,
    required this.icon,
    required this.onTap,
    required this.title,
  });

  final String icon;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        futureDelayedNavigator(onTap);
      },
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: 140,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              height: 67,
              width: 67,
              decoration: BoxDecoration(
                color: AppColors.antiFlashWhite,
                border: Border.all(
                  color: valueBasedOnTheme<Color>(
                    context,
                    light: AppColors.prussianBlue,
                    dark: AppColors.orange,
                  )!,
                  width: 2,
                ),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  icon,
                  colorFilter: valueBasedOnTheme<ColorFilter>(
                    context,
                    dark: const ColorFilter.mode(
                      AppColors.orange,
                      BlendMode.srcATop,
                    ),
                  ),
                ),
              ),
            ),
            AppSizes.height4,
            Text(
              title,
              style: AppTextStyles.bold16(context).copyWith(
                color: valueBasedOnTheme<Color>(
                  context,
                  light: AppColors.black,
                  dark: AppColors.white,
                )!,
              ),
            )
          ],
        ),
      ),
    );
  }
}
