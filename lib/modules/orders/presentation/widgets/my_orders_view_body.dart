import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/responsive_items_list.dart';

class MyOrdersViewBody extends StatelessWidget {
  const MyOrdersViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ResponsiveItemsList(
      appearLeaveReviewButton: true,
      appearLikeButton: true,
      itemCount: 9,
    );

    // Displays this widget when no orders are available
    // return const EmptyOrdersSection();
  }
}
