import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/item_widget.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class ResponsiveItemsList extends StatelessWidget {
  const ResponsiveItemsList({
    super.key,
    required this.itemCount,
    this.appearLikeButton = true,
    this.appearLeaveReviewButton = false,
    this.heroTag,
    this.isLiked = false,
    this.onLikeTapped,
    this.onTap,
    this.padding,
  });

  final bool appearLeaveReviewButton;
  final bool appearLikeButton;
  // The `heroTag` function allows for setting a unique hero tag for each element.
  // Developers can replace the parameter `index` with any other unique variable
  // (item id for example) to ensure the uniqueness of hero tags and prevent 
  // conflicts when multiple instances are present on the same page.
  /// Example of use: (index) => 'prefixHeroTag$index'
  final String Function(int index)? heroTag;
  final bool isLiked;
  final int itemCount;
  final void Function(bool isLiked, int index)? onLikeTapped;
  // Replace the index varaible with the same unique variable used in heroTag
  final void Function(int index)? onTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < AppSizes.mediumtBreakpoint) {
      return ListView.separated(
        padding: padding ?? AppSizes.bodySymmetricPadding(context),
        itemCount: itemCount,
        itemBuilder: (context, index) => ItemWidget(
          appearLeaveReviewButton: appearLeaveReviewButton,
          appearLikeButton: appearLikeButton,
          heroTag: (heroTag != null) ? heroTag!(index) : null,
          isLiked: isLiked,
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
      );
    } else {
      return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 370,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
          childAspectRatio: 382 / 500,
        ),
        padding: padding ?? AppSizes.bodySymmetricPadding(context),
        itemCount: itemCount,
        itemBuilder: (context, index) => ItemWidget(
          appearLeaveReviewButton: appearLeaveReviewButton,
          appearLikeButton: appearLikeButton,
          heroTag: (heroTag != null) ? heroTag!(index) : null,
          isLiked: isLiked,
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
      );
    }
  }
}
