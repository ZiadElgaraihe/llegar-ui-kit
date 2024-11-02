import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/core/presentation/widgets/item_details_view_body.dart';

// This view contains three cases:
// 1) not available: in this case item can't be rented (rent button is hidden)
// 2) not negotiable: in this case user can't make an offer (only can rent item with price owner selected)
// 3) negotiable: in this case use can make an offer with price of his choice (then owner can accept or reject)
class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({
    super.key,
    this.heroTag,
  });

  final String? heroTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ItemDetailsViewBody(heroTag: heroTag),
    );
  }
}
