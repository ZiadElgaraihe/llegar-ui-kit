import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_secondary_elevated_button.dart';
import 'package:llegar/modules/home/presentation/widgets/filter_price_range_section.dart';
import 'package:llegar/modules/home/presentation/widgets/filter_section.dart';
import 'package:llegar/core/presentation/widgets/options_rating_item.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                translate(context).sortAndFilter,
                style: AppTextStyles.bold24(context),
              ),
              AppSizes.height12,
              FilterSection(
                items: [
                  translate(context).all,
                  translate(context).property,
                  translate(context).transportation,
                  translate(context).playAreas,
                  translate(context).clothes,
                  translate(context).eventRentals,
                  translate(context).electronics,
                ],
                onSelectCategory: (value) {},
                title: translate(context).itemType,
              ),
              FilterSection(
                items: [
                  translate(context).all,
                  translate(context).newText,
                  translate(context).used,
                ],
                onSelectCategory: (value) {},
                title: translate(context).itemCondition,
              ),
              FilterPriceRangeSection(
                onChanged: (rangeValues) {},
              ),
              FilterSection(
                items: [
                  translate(context).all,
                  '5',
                  '4',
                  '3',
                  '2',
                  '1',
                  '0',
                ],
                onSelectCategory: (value) {},
                title: translate(context).rating,
                builder: (item, isSelected) => OptionsRatingItem(
                  item: item,
                  isSelected: isSelected,
                ),
              ),
              FilterSection(
                items: [
                  translate(context).all,
                  translate(context).jerusalem,
                  translate(context).baghdad,
                  translate(context).damascus,
                  translate(context).cairo,
                  translate(context).rabat,
                ],
                onSelectCategory: (value) {},
                title: translate(context).city,
              ),
            ],
          ),
        ),
        SliverPadding(
          padding: AppSizes.bodyHorizontalPadding(context),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: AppSizes.height24),
                Row(
                  children: [
                    Flexible(
                      child: CustomSecondaryElevatedButton(
                        onPressed: () {},
                        title: translate(context).reset,
                      ),
                    ),
                    AppSizes.width24,
                    Flexible(
                      child: CustomElevatedButton(
                        onPressed: () {},
                        title: translate(context).apply,
                      ),
                    ),
                  ],
                ),
                AppSizes.height24,
              ],
            ),
          ),
        )
      ],
    );
  }
}
