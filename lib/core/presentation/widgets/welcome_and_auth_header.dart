import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

///this stateless widget is used in welcome and auth modules
///in how did you know us, social log in, sign up and log in views bodies
///
///contains image and title vertically
class WelcomeAndAuthHeader extends StatelessWidget {
  const WelcomeAndAuthHeader({
    super.key,
    required this.headerImage,
    required this.headerTitle,
  });

  final String headerImage;
  final String headerTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSizes.height12,
        SvgPicture.asset(headerImage),
        AppSizes.height12,
        Text(
          headerTitle,
          style: AppTextStyles.bold32(context).copyWith(
            color: valueBasedOnTheme(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            ),
          ),
        ),
        AppSizes.height24,
      ],
    );
  }
}
