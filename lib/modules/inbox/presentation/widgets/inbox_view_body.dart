import 'package:flutter/material.dart';
import 'package:llegar/modules/inbox/presentation/widgets/inbox_item_list_tile.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class InboxViewBody extends StatelessWidget {
  const InboxViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.bodyHorizontalPadding(context).left,
        vertical: 12,
      ),
      itemCount: 1,
      itemBuilder: (context, index) => const InboxItemListTile(),
      separatorBuilder: (context, index) => AppSizes.height12,
    );
  }
}
