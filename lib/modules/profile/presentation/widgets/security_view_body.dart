import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/modules/profile/domain/entities/profile_item_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/profile_item_list_tile.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/enums/profile_item_type.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class SecurityViewBody extends StatelessWidget {
  const SecurityViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: Column(
        children: [
          AppSizes.height24,
          ProfileItemListTile(
            profileItemEntity: ProfileItemEntity(
              initialValue: false,
              onChanged: (value) {},
              profileItemType: ProfileItemType.switchButton,
              title: translate(context).rememberMe,
            ),
          ),
          AppSizes.height4,
          ProfileItemListTile(
            profileItemEntity: ProfileItemEntity(
              initialValue: false,
              onChanged: (value) {},
              profileItemType: ProfileItemType.switchButton,
              title: translate(context).faceId,
            ),
          ),
          const Spacer(),
          CustomElevatedButton(
            title: translate(context).changePassword,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.resetPasswordView);
            },
          ),
          AppSizes.height24,
        ],
      ),
    );
  }
}
