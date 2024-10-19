import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/responsive_items_list.dart';

class MyWishlistViewBody extends StatelessWidget {
  const MyWishlistViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ResponsiveItemsList(
      itemCount: 10,
      isLiked: true,
    );
  }
}
