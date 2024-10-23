import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/welcome/presentation/widgets/welcome_view_body.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_locale.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  void _onSkipPressed(BuildContext context) {
    futureDelayedNavigator(() {
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.howDidYouKnowUsView,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                translate(context).skip,
                style: AppTextStyles.bold24(context).copyWith(
                  color: secondaryThemeColor(context),
                ),
              ),
              IconButton(
                onPressed: () {
                  _onSkipPressed(context);
                },
                icon: SvgPicture.asset(
                  valueBasedOnLocale<String>(
                    context,
                    ltr: AppIcons.arrowRight,
                    rtl: AppIcons.arrowLeft,
                  )!,
                  colorFilter: valueBasedOnTheme<ColorFilter>(
                    context,
                    dark: const ColorFilter.mode(
                      AppColors.white,
                      BlendMode.srcATop,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: const WelcomeViewBody(),
    );
  }
}
