import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/privacy_policy_entity.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';

class PrivacyPolicySection extends StatelessWidget {
  const PrivacyPolicySection({
    super.key,
    required this.pointNumber,
    required this.privacyPolicyEntity,
  });

  final int pointNumber;
  final PrivacyPolicyEntity privacyPolicyEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$pointNumber. ${privacyPolicyEntity.title(context)}',
          style: AppTextStyles.bold20(context),
        ),
        AppSizes.height16,
        Text(
          privacyPolicyEntity.details(context),
          style: AppTextStyles.medium14(context),
        ),
      ],
    );
  }
}
