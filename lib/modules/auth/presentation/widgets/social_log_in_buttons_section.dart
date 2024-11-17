import 'package:flutter/material.dart';
import 'package:llegar/modules/auth/domain/entities/social_auth_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/social_log_in_outlined_button.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

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
  }
}
