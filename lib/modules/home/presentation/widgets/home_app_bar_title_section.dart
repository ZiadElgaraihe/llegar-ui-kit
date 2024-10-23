import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
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
            color: mainThemeColor(context),
            width: 2,
          ),
        ),
        AppSizes.width8,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  children: [
                    Text(
                      _getGreeting(context),
                      style: AppTextStyles.regular14(context).copyWith(
                        fontFamily: AppStrings.urbanistFontFamily,
                        color: mainThemeColor(context),
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
              ),
              Text(
                'Nour Mohamed',
                style: AppTextStyles.bold16(context).copyWith(
                  fontFamily: AppStrings.urbanistFontFamily,
                  color: mainThemeColor(context),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  ///Used to get greeting sentence depending on the day time
  String _getGreeting(BuildContext context) {
    final hour = DateTime.now().hour;

    if (hour >= 5 && hour < 17) {
      // Morning: 5:00 AM to 4:59 PM
      return translate(context).goodMorning;
    } else {
      // Evening: 5:00 PM to 4:59 AM
      return translate(context).goodEvening;
    }
  }
}
