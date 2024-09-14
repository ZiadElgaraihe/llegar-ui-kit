import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/welcome_and_auth_header.dart';
import 'package:llegar/modules/auth/domain/entities/social_auth_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/auth_toggle_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/or_divider_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/social_log_in_outlined_button.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SocialLogInViewBody extends StatelessWidget {
  const SocialLogInViewBody({
    super.key,
  });

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
        SocialLogInOutlinedButton(
          onFuturePressed: () async {
            //remove this & add your logic
            await Future.delayed(const Duration(seconds: 2));
          },
          socialLogInButtonEntity: SocialAuthEntity(
            icon: AppIcons.facebook,
            title: translate(context).continueWithFacebook,
          ),
        ),
        AppSizes.height12,
        SocialLogInOutlinedButton(
          onFuturePressed: () async {
            //remove this
            await Future.delayed(const Duration(seconds: 2));
          },
          socialLogInButtonEntity: SocialAuthEntity(
            icon: AppIcons.google,
            title: translate(context).continueWithGoogle,
          ),
        ),
        AppSizes.height12,
        SocialLogInOutlinedButton(
          onFuturePressed: () async {
            //remove this
            await Future.delayed(const Duration(seconds: 2));
          },
          socialLogInButtonEntity: SocialAuthEntity(
            icon: valueBasedOnTheme<String>(
              context,
              light: AppIcons.apple,
              dark: AppIcons.appleDark,
            )!,
            title: translate(context).continueWithApple,
          ),
        ),
        AppSizes.height24,
        OrDividerRow(title: translate(context).or),
        AppSizes.height24,
        CustomElevatedButton(
          title: translate(context).signInWithPassword,
          onPressed: () {
            Navigator.pushReplacementNamed(context, AppRoutes.logInView);
          },
        ),
        AppSizes.height12,
        AuthToggleRow(
          buttonTitle: translate(context).signUp,
          onPressed: () {
            Navigator.pushReplacementNamed(context, AppRoutes.signUpView);
          },
          title: translate(context).doNotHaveAnAccount,
        ),
        AppSizes.height24,
      ],
    );
  }
}
