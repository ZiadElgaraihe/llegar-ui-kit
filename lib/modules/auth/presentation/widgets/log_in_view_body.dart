import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/welcome_and_auth_header.dart';
import 'package:llegar/modules/auth/presentation/widgets/auth_toggle_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/log_in_form.dart';
import 'package:llegar/modules/auth/presentation/widgets/or_divider_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/social_auth_card_buttons_row.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/app_strings.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: Column(
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
          AppSizes.height8,
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              textStyle: AppTextStyles.medium14(context).copyWith(
                fontFamily: AppStrings.interFontFamily,
                color: AppColors.green,
              ),
              foregroundColor: AppColors.green,
            ),
            child: Text(translate(context).forgetThePassword),
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
              Navigator.pushReplacementNamed(context, AppRoutes.signUpView);
            },
            title: translate(context).doNotHaveAnAccount,
          ),
          AppSizes.height24,
        ],
      ),
    );
  }
}
