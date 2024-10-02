import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/item_widget.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class MyItemsViewBody extends StatelessWidget {
  const MyItemsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < AppSizes.mediumtBreakpoint) {
      return ListView.separated(
        padding: AppSizes.bodySymmetricPadding(context),
        itemCount: 9,
        itemBuilder: (context, index) => const ItemWidget(
          appearLikeButton: false,
        ),
        separatorBuilder: (context, index) => AppSizes.height24,
      );
    } else {
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 370,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
          childAspectRatio: 382 / 500,
        ),
        padding: AppSizes.bodySymmetricPadding(context),
        itemCount: 9,
        itemBuilder: (context, index) => const ItemWidget(
          appearLikeButton: false,
        ),
      );
    }
  }
}
