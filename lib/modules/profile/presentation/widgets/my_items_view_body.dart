import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/item_details_entity.dart';
import 'package:llegar/core/presentation/widgets/responsive_items_list.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_strings.dart';

class MyItemsViewBody extends StatelessWidget {
  const MyItemsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveItemsList(
      appearLikeButton: false,
      itemCount: 9,
      heroTag: (index) => '${AppStrings.myItemsHeroTag}$index',
      onTap: (index) {
        Navigator.pushNamed(
          context,
          AppRoutes.itemDetailsView,
          arguments: ItemDetailsEntity(
            heroTag: '${AppStrings.myItemsHeroTag}$index',
            isMyItem: true,
          ),
        );
      },
    );
  }
}
