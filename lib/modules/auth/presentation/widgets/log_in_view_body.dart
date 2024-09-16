import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/welcome_and_auth_header.dart';
import 'package:llegar/modules/auth/presentation/widgets/auth_toggle_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/log_in_form.dart';
import 'package:llegar/modules/auth/presentation/widgets/or_divider_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/remember_me_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/social_auth_card_buttons_row.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/app_strings.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  void _onAuthTogglePressed(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.signUpView);
  }

  void _onForgetPasswordPressed(BuildContext context) {
    futureDelayedNavigator(
      () {
        Navigator.pushNamed(context, AppRoutes.forgetPasswordView);
      },
    );
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
          headerTitle: translate(context).logInToYourAccount,
        ),
        const LogInForm(),
        AppSizes.height16,
        const RememberMeRow(),
        AppSizes.height16,
        //wrap custom elevated button with center to apply the max width
        Center(
          child: CustomElevatedButton(
            title: translate(context).logIn,
            onFuturePressed: () async {
              //remove this & add your logic
              await Future.delayed(const Duration(seconds: 2));
            },
          ),
        ),
        AppSizes.height8,
        Center(
          child: TextButton(
            onPressed: () {
              _onForgetPasswordPressed(context);
            },
            style: TextButton.styleFrom(
              textStyle: AppTextStyles.medium14(context).copyWith(
                fontFamily: AppStrings.interFontFamily,
                color: AppColors.green,
              ),
              foregroundColor: AppColors.green,
            ),
            child: Text(translate(context).forgetThePassword),
          ),
        ),
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
