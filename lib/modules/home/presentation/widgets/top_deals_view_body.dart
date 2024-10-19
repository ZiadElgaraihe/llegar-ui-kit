import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/responsive_items_list.dart';
import 'package:llegar/modules/home/presentation/widgets/options_bar.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class TopDealsViewBody extends StatelessWidget {
  const TopDealsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSizes.height24,
        OptionsBar(
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
        ),
        AppSizes.height24,
        Expanded(
          child: ResponsiveItemsList(
            padding: EdgeInsets.only(
              left: AppSizes.bodyHorizontalPadding(context).left,
              right: AppSizes.bodyHorizontalPadding(context).right,
              bottom: 24,
            ),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
