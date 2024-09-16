import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/welcome_and_auth_header.dart';
import 'package:llegar/modules/auth/presentation/widgets/auth_toggle_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/or_divider_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/social_log_in_buttons_section.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SocialLogInViewBody extends StatelessWidget {
  const SocialLogInViewBody({
    super.key,
  });

  void _onAuthTogglePressed(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.signUpView);
  }

  void _onSignInWithPasswordPressed(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.logInView);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: AppSizes.bodyHorizontalPadding(context),
      children: [
        WelcomeAndAuthHeader(
          headerImage: valueBasedOnTheme<String>(
            context,
            light: AppImages.letUsYouIn,
            dark: AppImages.letUsYouInDark,
          )!,
          headerTitle: translate(context).letUsYouIn,
        ),
        SocialLogInButtonsSection(
          onContinueWithApple: () async {
            //remove this & add your logic
            await Future.delayed(const Duration(seconds: 2));
          },
          onContinueWithFacebook: () async {
            //remove this & add your logic
            await Future.delayed(const Duration(seconds: 2));
          },
          onContinueWithGoogle: () async {
            //remove this & add your logic
            await Future.delayed(const Duration(seconds: 2));
          },
        ),
        AppSizes.height24,
        OrDividerRow(title: translate(context).or),
        AppSizes.height24,
        CustomElevatedButton(
          title: translate(context).signInWithPassword,
          onPressed: () {
            _onSignInWithPasswordPressed(context);
          },
        ),
        AppSizes.height12,
        AuthToggleRow(
          buttonTitle: translate(context).signUp,
          onPressed: () {
            _onAuthTogglePressed(context);
          },
          title: translate(context).doNotHaveAnAccount,
        ),
        AppSizes.height24,
      ],
    );
  }
}
