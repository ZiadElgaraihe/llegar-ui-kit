import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/item_widget.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class ReponsiveItemsSliverList extends StatelessWidget {
  const ReponsiveItemsSliverList({
    super.key,
    this.onLikeTapped,
    this.onTap,
    this.heroTag,
  });

  final void Function(bool isLiked, int index)? onLikeTapped;
  // Replace the index varaible with the same unique variable used in heroTag
  final void Function(int index)? onTap;
  // The `heroTag` function allows for setting a unique hero tag for each element.
  // Developers can replace the parameter `index` with any other unique variable
  // (item id for example) to ensure the uniqueness of hero tags and prevent
  // conflicts when multiple instances are present on the same page.
  /// Example of use: (index) => 'prefixHeroTag$index'
  final String Function(int index)? heroTag;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < AppSizes.mediumtBreakpoint) {
      return SliverPadding(
        padding: AppSizes.bodySymmetricPadding(context),
        sliver: SliverList.separated(
          itemCount: 10,
          itemBuilder: (context, index) => ItemWidget(
            heroTag: (heroTag != null) ? heroTag!(index) : null,
            onLikeTapped: (onLikeTapped != null)
                ? (isLiked) {
                    onLikeTapped!(isLiked, index);
                  }
                : null,
            onTap: (onTap != null)
                ? () {
                    onTap!(index);
                  }
                : null,
          ),
          separatorBuilder: (context, index) => AppSizes.height24,
        ),
      );
    } else {
      return SliverPadding(
        padding: AppSizes.bodySymmetricPadding(context),
        sliver: SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 370,
            mainAxisSpacing: 8,
            crossAxisSpacing: 16,
            childAspectRatio: 382 / 500,
          ),
          itemCount: 10,
          itemBuilder: (context, index) => ItemWidget(
            heroTag: (heroTag != null) ? heroTag!(index) : null,
            onLikeTapped: (onLikeTapped != null)
                ? (isLiked) {
                    onLikeTapped!(isLiked, index);
                  }
                : null,
            onTap: (onTap != null)
                ? () {
                    onTap!(index);
                  }
                : null,
          ),
        ),
      );
    }
  }
}
