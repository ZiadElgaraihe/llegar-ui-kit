import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/item_details_entity.dart';
import 'package:llegar/core/presentation/widgets/responsive_items_list.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_strings.dart';

class MyOrdersViewBody extends StatelessWidget {
  const MyOrdersViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveItemsList(
      appearLeaveReviewButton: true,
      appearLikeButton: true,
      itemCount: 10,
      heroTag: (index) => '${AppStrings.myOrdersItemHeroTag}$index',
      onTap: (index) {
        Navigator.pushNamed(
          context,
          AppRoutes.itemDetailsView,
          arguments: ItemDetailsEntity(
            heroTag: '${AppStrings.myOrdersItemHeroTag}$index',
          ),
        );
      },
    );

    // Displays this widget when no orders are available
    // return const EmptyOrdersSection();
  }
}
