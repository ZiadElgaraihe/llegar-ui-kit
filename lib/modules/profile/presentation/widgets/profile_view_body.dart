import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/presentation/widgets/join_premium_container.dart';
import 'package:llegar/modules/profile/presentation/widgets/profile_info.dart';
import 'package:llegar/modules/profile/presentation/widgets/profile_items.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: AppSizes.bodyHorizontalPadding(context),
      children: const [
        AppSizes.height24,
        ProfileInfo(),
        AppSizes.height24,
        JoinPremiumContainer(),
        AppSizes.height24,
        ProfileItems(),
        AppSizes.height24,
      ],
    );
  }
}
