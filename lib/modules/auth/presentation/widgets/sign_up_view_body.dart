import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/auth/presentation/widgets/auth_toggle_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/or_divider_row.dart';
import 'package:llegar/modules/auth/presentation/widgets/sign_up_form.dart';
import 'package:llegar/modules/auth/presentation/widgets/social_auth_card_buttons_row.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_images.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: Column(
        children: [
          AppSizes.height12,
          SvgPicture.asset(
            valueBasedOnTheme<String>(
              context,
              light: AppImages.logo,
              dark: AppImages.logoDark,
            )!,
          ),
          AppSizes.height12,
          Text(
            translate(context).createYourAccount,
            style: AppTextStyles.bold32(context).copyWith(
              color: valueBasedOnTheme(
                context,
                light: AppColors.black,
              ),
            ),
          ),
          AppSizes.height24,
          const SignUpForm(),
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
            onPressed: () {},
            title: translate(context).alreadyHaveAnAccount,
          ),
          AppSizes.height24,
        ],
      ),
    );
  }
}
