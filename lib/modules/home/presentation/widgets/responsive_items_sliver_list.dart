import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/item_widget.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class ReponsiveItemsSliverList extends StatelessWidget {
  const ReponsiveItemsSliverList({
    super.key,
    this.onLikeTapped,
    this.onTap,
  });

  final void Function(bool isLiked, int index)? onLikeTapped;
  final void Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < AppSizes.mediumtBreakpoint) {
      return SliverPadding(
        padding: AppSizes.bodySymmetricPadding(context),
        sliver: SliverList.separated(
          itemCount: 10,
          itemBuilder: (context, index) => ItemWidget(
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
