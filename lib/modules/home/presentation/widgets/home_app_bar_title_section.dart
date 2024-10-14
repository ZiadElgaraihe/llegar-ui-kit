import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class HomeAppBarTitleSection extends StatelessWidget {
  const HomeAppBarTitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppSizes.width4,
        ProfilePhoto(
          size: 45,
          side: BorderSide(
            color: valueBasedOnTheme<Color>(
              context,
              listen: true,
              light: AppColors.prussianBlue,
              dark: AppColors.orange,
            )!,
            width: 2,
          ),
        ),
        AppSizes.width8,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Welcome',
                  style: AppTextStyles.regular14(context).copyWith(
                    fontFamily: AppStrings.urbanistFontFamily,
                  ),
                ),
                AppSizes.width8,
                SvgPicture.asset(
                  AppIcons.wavingHand,
                  colorFilter: valueBasedOnTheme<ColorFilter>(
                    context,
                    dark: const ColorFilter.mode(
                      AppColors.orange,
                      BlendMode.srcATop,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Nour Mohamed',
              style: AppTextStyles.bold16(context).copyWith(
                fontFamily: AppStrings.urbanistFontFamily,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
