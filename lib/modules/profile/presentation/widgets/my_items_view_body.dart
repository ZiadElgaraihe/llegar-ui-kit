import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/responsive_items_list.dart';

class MyItemsViewBody extends StatelessWidget {
  const MyItemsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ResponsiveItemsList(
      appearLikeButton: false,
      itemCount: 9,
    );
  }
}
