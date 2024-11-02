import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_container.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_item.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class SpecialOffersViewBody extends StatelessWidget {
  const SpecialOffersViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < AppSizes.expandedBreakpoint) {
      return ListView.separated(
        padding: AppSizes.bodySymmetricPadding(context),
        itemCount: 4,
        itemBuilder: (context, index) => Center(
          child: GestureDetector(
            onTap: () {
              _onItemTapped(context);
            },
            child: const SpecialOffersConatiner(
              child: SpecialOffersItem(),
            ),
          ),
        ),
        separatorBuilder: (context, index) => AppSizes.height24,
      );
    } else {
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 382 / 172,
        ),
        padding: AppSizes.bodySymmetricPadding(context),
        itemCount: 4,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            _onItemTapped(context);
          },
          child: const SpecialOffersConatiner(
            child: SpecialOffersItem(),
          ),
        ),
      );
    }
  }

  void _onItemTapped(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.itemDetailsView);
  }
}
