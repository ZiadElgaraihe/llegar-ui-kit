import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/welcome_and_auth_header.dart';
import 'package:llegar/modules/welcome/presentation/widgets/how_did_you_know_about_us_buttons_section.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class HowDidYouKnowUsViewBody extends StatelessWidget {
  const HowDidYouKnowUsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: Column(
        children: [
          WelcomeAndAuthHeader(
            headerImage: valueBasedOnTheme<String>(
              context,
              light: AppImages.howDidYouKnowUs,
              dark: AppImages.howDidYouKnowUsDark,
            )!,
            headerTitle: translate(context).howDidYouKnowUs,
          ),
          const HowDidYouKnowUsButtonsSection(),
          AppSizes.height24,
          CustomElevatedButton(
            title: translate(context).continueText,
            
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                AppRoutes.socialLogInView,
              );
            },
          ),
          AppSizes.height24,
        ],
      ),
    );
  }
}
