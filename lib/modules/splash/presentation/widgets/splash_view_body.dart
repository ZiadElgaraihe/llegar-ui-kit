import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            valueBasedOnTheme<String>(
              context,
              light: AppImages.splashLogo,
              dark: AppImages.splashLogoDark,
            )!,
          ),
          Text(
            translate(context).weDeliverTrust,
            style:
                AppTextStyles.bold28(context, responsive: false).copyWith(
              color: valueBasedOnTheme<Color>(
                context,
                dark: AppColors.orange,
              ),
            ),
          ),
          const SizedBox(height: 48),
          SpinKitCircle(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.prussianBlue,
              dark: AppColors.orange,
            )!,
            size: 60,
          ),
        ],
      ),
    );
  }
}
