import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/profile_summary_entity.dart';
import 'package:llegar/core/presentation/widgets/item_details_outlined_button.dart';
import 'package:llegar/core/presentation/widgets/item_owner_container.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ItemOwnerSection extends StatelessWidget {
  const ItemOwnerSection({
    super.key,
    required this.isMyItem,
  });

  final bool isMyItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemOwnerContainer(isMyItem: isMyItem),
        AppSizes.height24,
        ItemDetailsOutlinedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              AppRoutes.profileSummaryView,
              arguments: ProfileSummaryEntity(
                // This is used here to change appbar title depening on isMyItem
                // Here you can add the user name of the item owner
                appBarTitle: isMyItem ? 'Nour Mohamed' : 'Fareed Khaled',
                isMyItem: isMyItem,
              ),
            );
          },
          title: isMyItem
              ? translate(context).seeMyPage
              : translate(context).seeHisPage,
        ),
      ],
    );
  }
}
