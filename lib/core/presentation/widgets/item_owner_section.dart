import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/item_details_outlined_button.dart';
import 'package:llegar/core/presentation/widgets/item_owner_container.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ItemOwnerSection extends StatelessWidget {
  const ItemOwnerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ItemOwnerContainer(),
        AppSizes.height24,
        ItemDetailsOutlinedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              AppRoutes.profileSummaryView,
              arguments: 'Fareed Khaled',
            );
          },
          title: translate(context).seeHisPage,
        ),
      ],
    );
  }
}
