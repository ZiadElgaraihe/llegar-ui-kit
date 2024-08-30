import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
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
        ),
        Positioned(
          right: 21.8,
          top: 50,
          child: SvgPicture.asset(
            valueBasedOnTheme<String>(
              context,
              light: AppImages.ellipse9,
              dark: AppImages.ellipse9Dark,
            )!,
          ),
        ),
        Positioned(
          left: 0,
          top: 175,
          child: SvgPicture.asset(
            valueBasedOnTheme<String>(
              context,
              light: AppImages.ellipse10,
              dark: AppImages.ellipse10Dark,
            )!,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 87.37,
          child: SvgPicture.asset(
            valueBasedOnTheme<String>(
              context,
              light: AppImages.ellipse12,
              dark: AppImages.ellipse12Dark,
            )!,
            height: 120,
            width: 120,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: SvgPicture.asset(
            valueBasedOnTheme<String>(
              context,
              light: AppImages.ellipse11,
              dark: AppImages.ellipse11Dark,
            )!,
          ),
        ),
      ],
    );
  }
}
