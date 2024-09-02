import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          valueBasedOnTheme<String>(
            context,
            light: AppImages.splashLogo,
            dark: AppImages.splashLogoDark,
          )!,
          fit: BoxFit.scaleDown,
        ),
        Text(
          translate(context).weDeliverTrust,
          style: AppTextStyles.bold28(context, responsive: false),
        ),
      ],
    );
  }
}
