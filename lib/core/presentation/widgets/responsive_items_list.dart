import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/item_widget.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class ResponsiveItemsList extends StatelessWidget {
  const ResponsiveItemsList({
    super.key,
    required this.itemCount,
    this.appearLikeButton = true,
    this.appearLeaveReviewButton = false,
    this.prefixHeroTag,
    this.isLiked = false,
    this.onLikeTapped,
    this.onTap,
    this.padding,
  });

  final bool appearLeaveReviewButton;
  final bool appearLikeButton;
  final String? prefixHeroTag;
  final bool isLiked;
  final int itemCount;
  final void Function(bool isLiked, int index)? onLikeTapped;
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
          heroTag: '$prefixHeroTag$index',
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
          heroTag: '$prefixHeroTag$index',
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
