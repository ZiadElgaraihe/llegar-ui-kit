import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/item_details_entity.dart';
import 'package:llegar/core/presentation/widgets/responsive_items_list.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_strings.dart';

class MyWishlistViewBody extends StatelessWidget {
  const MyWishlistViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveItemsList(
      itemCount: 10,
      isLiked: true,
      heroTag: (index) => '${AppStrings.myWishlistItemHeroTag}$index',
      onTap: (index) {
        Navigator.pushNamed(
          context,
          AppRoutes.itemDetailsView,
          arguments: ItemDetailsEntity(
            heroTag: '${AppStrings.myWishlistItemHeroTag}$index',
          ),
        );
      },
    );
  }
}
