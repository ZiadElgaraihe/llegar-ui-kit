import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/welcome_and_auth_header.dart';
import 'package:llegar/modules/auth/presentation/widgets/auth_toggle_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/or_divider_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/remember_me_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/sign_up_form.dart';
import 'package:llegar/modules/auth/presentation/widgets/social_auth_card_buttons_row.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  void _onAuthTogglePressed(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.logInView);
  }

  void _onSignUpPressed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpProfileInfoView);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: AppSizes.bodyHorizontalPadding(context),
      children: [
        WelcomeAndAuthHeader(
          headerImage: valueBasedOnTheme<String>(
            context,
            light: AppImages.logo,
            dark: AppImages.logoDark,
          )!,
          headerTitle: translate(context).createYourAccount,
        ),
        const SignUpForm(),
        AppSizes.height16,
        const RememberMeRow(),
        AppSizes.height16,
        CustomElevatedButton(
          title: translate(context).signUp,
          onPressed: () {
            _onSignUpPressed(context);
          },
        ),
        AppSizes.height24,
        OrDividerRow(title: translate(context).orContinueWith),
        AppSizes.height24,
        SocialAuthCardButtonsRow(
          onAppleTap: () async {
            //remove this & add your logic
            await Future.delayed(const Duration(seconds: 2));
          },
          onFacebookTap: () async {
            //remove this & add your logic
            await Future.delayed(const Duration(seconds: 2));
          },
          onGoogleTap: () async {
            //remove this & add your logic
            await Future.delayed(const Duration(seconds: 2));
          },
        ),
        AppSizes.height4,
        AuthToggleRow(
          buttonTitle: translate(context).logIn,
          onPressed: () {
            _onAuthTogglePressed(context);
          },
          title: translate(context).alreadyHaveAnAccount,
        ),
        AppSizes.height24,
      ],
    );
  }
}
