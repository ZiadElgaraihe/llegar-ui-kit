import 'package:flutter/material.dart';
import 'package:llegar/modules/auth/domain/entities/social_auth_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/social_auth_card_button.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/app_sizes.dart';

class SocialAuthCardButtonsRow extends StatelessWidget {
  const SocialAuthCardButtonsRow({
    super.key,
    required this.onGoogleTap,
    required this.onAppleTap,
    required this.onFacebookTap,
  });

  final Future<void> Function() onGoogleTap;
  final Future<void> Function() onAppleTap;
  final Future<void> Function() onFacebookTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialAuthCardButton(
          socialAuthEntity: const SocialAuthEntity(icon: AppIcons.google),
          onTap: onGoogleTap,
        ),
        AppSizes.width8,
        SocialAuthCardButton(
          socialAuthEntity: const SocialAuthEntity(icon: AppIcons.apple),
          onTap: onAppleTap,
        ),
        AppSizes.width8,
        SocialAuthCardButton(
          socialAuthEntity: const SocialAuthEntity(icon: AppIcons.facebook),
          onTap: onFacebookTap,
        ),
      ],
    );
  }
}
