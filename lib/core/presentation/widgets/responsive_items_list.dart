import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/item_widget.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class ResponsiveItemsList extends StatelessWidget {
  const ResponsiveItemsList({
    super.key,
    required this.itemCount,
    this.appearLikeButton = true,
    this.appearLeaveReviewButton = false,
    this.padding,
  });

  final bool appearLeaveReviewButton;
  final bool appearLikeButton;
  final int itemCount;
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
        ),
      );
    }
  }
}
