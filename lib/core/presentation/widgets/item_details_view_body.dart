import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/item_details_entity.dart';
import 'package:llegar/core/presentation/widgets/item_conditions_section.dart';
import 'package:llegar/core/presentation/widgets/item_details_footer_section.dart';
import 'package:llegar/core/presentation/widgets/item_details_outlined_button.dart';
import 'package:llegar/core/presentation/widgets/item_details_section.dart';
import 'package:llegar/core/presentation/widgets/item_images_section.dart';
import 'package:llegar/core/presentation/widgets/item_location_section.dart';
import 'package:llegar/core/presentation/widgets/item_negotiability_section.dart';
import 'package:llegar/core/presentation/widgets/item_owner_section.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

// This view contains three cases:
// 1) not available: in this case item can't be rented (rent button is hidden)
// 2) not negotiable: in this case user can't make an offer (only can rent item with price owner selected)
// 3) negotiable: in this case use can make an offer with price of his choice (then owner can accept or reject)
class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({
    super.key,
    required this.itemDetailsEntity,
  });

  final ItemDetailsEntity? itemDetailsEntity;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: ItemImagesSection(heroTag: itemDetailsEntity?.heroTag),
        ),
        Padding(
          padding: AppSizes.bodySymmetricPadding(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ItemDetailsSection(),
              AppSizes.height24,
              //user should accept all conditions before moving to the next step
              ItemConditionsSection(
                isMyItem: itemDetailsEntity?.isMyItem ?? false,
              ),
              AppSizes.height16,
              const ItemNegotiabilitySection(),
              AppSizes.height24,
              const ItemLocationSection(),
              AppSizes.height16,
              const ItemOwnerSection(),
              AppSizes.height24,
              // Users can only leave comments on items they have already rented.
              // This feature will be accessible in the "My Orders" view.
              ItemDetailsOutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.itemReviewsView);
                },
                title: translate(context).showComments,
              ),
            ],
          ),
        ),
        ItemDetailsFooterSection(
          isMyItem: itemDetailsEntity?.isMyItem ?? false,
        ),
      ],
    );
  }
}
