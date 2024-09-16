import 'package:flutter/material.dart';
import 'package:llegar/modules/auth/domain/entities/social_auth_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/social_log_in_outlined_button.dart';
import 'package:llegar/modules/auth/presentation/widgets/vertical_social_log_in_outlined_button.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class SocialLogInButtonsSection extends StatelessWidget {
  const SocialLogInButtonsSection({
    super.key,
    required this.onContinueWithApple,
    required this.onContinueWithFacebook,
    required this.onContinueWithGoogle,
  });

  final Future<void> Function() onContinueWithApple;
  final Future<void> Function() onContinueWithFacebook;
  final Future<void> Function() onContinueWithGoogle;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < AppSizes.expandedBreakpoint) {
      return Column(
        children: [
          SocialLogInOutlinedButton(
            onFuturePressed: onContinueWithFacebook,
            socialLogInButtonEntity: SocialAuthEntity(
              icon: AppIcons.facebook,
              title: translate(context).continueWithFacebook,
            ),
          ),
          AppSizes.height12,
          SocialLogInOutlinedButton(
            onFuturePressed: onContinueWithGoogle,
            socialLogInButtonEntity: SocialAuthEntity(
              icon: AppIcons.google,
              title: translate(context).continueWithGoogle,
            ),
          ),
          AppSizes.height12,
          SocialLogInOutlinedButton(
            onFuturePressed: onContinueWithApple,
            socialLogInButtonEntity: SocialAuthEntity(
              icon: valueBasedOnTheme<String>(
                context,
                light: AppIcons.apple,
                dark: AppIcons.appleDark,
              )!,
              title: translate(context).continueWithApple,
            ),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Expanded(
            child: VerticalSocialLogInOutlinedButton(
              onFuturePressed: onContinueWithFacebook,
              socialLogInButtonEntity: SocialAuthEntity(
                icon: AppIcons.facebook,
                title: translate(context).continueWithFacebook,
              ),
            ),
          ),
          AppSizes.width12,
          Expanded(
            child: VerticalSocialLogInOutlinedButton(
              onFuturePressed: onContinueWithGoogle,
              socialLogInButtonEntity: SocialAuthEntity(
                icon: AppIcons.google,
                title: translate(context).continueWithGoogle,
              ),
            ),
          ),
          AppSizes.width12,
          Expanded(
            child: VerticalSocialLogInOutlinedButton(
              onFuturePressed: onContinueWithApple,
              socialLogInButtonEntity: SocialAuthEntity(
                icon: valueBasedOnTheme<String>(
                  context,
                  light: AppIcons.apple,
                  dark: AppIcons.appleDark,
                )!,
                title: translate(context).continueWithApple,
              ),
            ),
          ),
        ],
      );
    }
  }
}
