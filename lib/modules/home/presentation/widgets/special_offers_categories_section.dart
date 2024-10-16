import 'package:flutter/material.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_category_button.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class SpecialOffersCategoriesSection extends StatelessWidget {
  const SpecialOffersCategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SpecialOffersCategoryButton(
                icon: AppIcons.property,
                onTap: () {},
                title: translate(context).property,
              ),
              AppSizes.width8,
              SpecialOffersCategoryButton(
                icon: AppIcons.transportation,
                onTap: () {},
                title: translate(context).transportation,
              ),
              AppSizes.width8,
              SpecialOffersCategoryButton(
                icon: AppIcons.playAreas,
                onTap: () {},
                title: translate(context).playAreas,
              ),
            ],
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SpecialOffersCategoryButton(
                icon: AppIcons.clothes,
                onTap: () {},
                title: translate(context).clothes,
              ),
              AppSizes.width8,
              SpecialOffersCategoryButton(
                icon: AppIcons.eventRentals,
                onTap: () {},
                title: translate(context).eventRentals,
              ),
              AppSizes.width8,
              SpecialOffersCategoryButton(
                icon: AppIcons.electronics,
                onTap: () {},
                title: translate(context).electronics,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
