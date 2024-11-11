import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/domain/entities/item_details_entity.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/core/presentation/widgets/item_details_view_body.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

// This view contains three cases:
// 1) not available: in this case item can't be rented (rent button is hidden)
// 2) not negotiable: in this case user can't make an offer (only can rent item with price owner selected)
// 3) negotiable: in this case use can make an offer with price of his choice (then owner can accept or reject)
class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({
    super.key,
    required this.itemDetailsEntity,
  });

  final ItemDetailsEntity? itemDetailsEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          if (itemDetailsEntity?.isMyItem ?? false)
            IconButton(
              onPressed: () {
                futureDelayedNavigator(
                  () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.addItemView,
                      arguments: true,
                    );
                  },
                );
              },
              icon: SvgPicture.asset(
                AppIcons.pen,
                colorFilter: ColorFilter.mode(
                  mainThemeColor(context),
                  BlendMode.srcATop,
                ),
              ),
            ),
        ],
      ),
      body: ItemDetailsViewBody(itemDetailsEntity: itemDetailsEntity),
    );
  }
}
