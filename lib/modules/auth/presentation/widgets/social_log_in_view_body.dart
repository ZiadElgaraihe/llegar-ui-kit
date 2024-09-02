import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/modules/auth/domain/entities/social_auth_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/auth_toggle_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/or_divider_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/social_log_in_outlined_button.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SocialLogInViewBody extends StatelessWidget {
  const SocialLogInViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 12),
          SvgPicture.asset(
            valueBasedOnTheme<String>(
              context,
              light: AppImages.letUsYouIn,
              dark: AppImages.letUsYouInDark,
            )!,
          ),
          const SizedBox(height: 12),
          Text(
            translate(context).letUsYouIn,
            style: AppTextStyles.bold32(context).copyWith(
              color: valueBasedOnTheme(
                context,
                light: AppColors.black,
              ),
            ),
          ),
          const SizedBox(height: 24),
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
          const SizedBox(height: 12),
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
          const SizedBox(height: 12),
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
          const SizedBox(height: 24),
          OrDividerRow(title: translate(context).or),
          const SizedBox(height: 24),
          CustomElevatedButton(
            title: translate(context).signInWithPassword,
            onPressed: () {},
          ),
          const SizedBox(height: 12),
          AuthToggleRow(
            buttonTitle: translate(context).signUp,
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.signUpView);
            },
            title: translate(context).doNotHaveAnAccount,
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
