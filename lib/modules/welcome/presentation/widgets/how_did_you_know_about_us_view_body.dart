import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/modules/welcome/presentation/widgets/how_did_you_know_about_us_buttons_section.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class HowDidYouKnowUsViewBody extends StatelessWidget {
  const HowDidYouKnowUsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SvgPicture.asset(
            valueBasedOnTheme<String>(
              context,
              light: AppImages.howDidYouKnowUs,
              dark: AppImages.howDidYouKnowUsDark,
            )!,
          ),
          const SizedBox(height: 12),
          Text(
            translate(context).howDidYouKnowUs,
            style: AppTextStyles.bold32(context).copyWith(
              color: valueBasedOnTheme(
                context,
                light: AppColors.black,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const HowDidYouKnowUsButtonsSection(),
          const SizedBox(height: 24),
          CustomElevatedButton(
            title: translate(context).continueText,
            onFuturePressed: () async {
              Navigator.pushReplacementNamed(
                context,
                AppRoutes.socialLogInView,
              );
            },
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
