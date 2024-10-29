import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/comment_widget.dart';
import 'package:llegar/core/presentation/widgets/options_rating_item.dart';
import 'package:llegar/modules/home/presentation/widgets/options_bar.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ItemReviewsViewBody extends StatelessWidget {
  const ItemReviewsViewBody({
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
            '5',
            '4',
            '3',
            '2',
            '1',
            '0',
          ],
          onSelectCategory: (value) {},
          builder: (item, isSelected) => OptionsRatingItem(
            item: item,
            isSelected: isSelected,
          ),
        ),
        AppSizes.height24,
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.only(
              left: AppSizes.bodyHorizontalPadding(context).left,
              right: AppSizes.bodyHorizontalPadding(context).right,
              bottom: 24,
            ),
            itemCount: 10,
            itemBuilder: (context, index) => const CommentWidget(),
            separatorBuilder: (context, index) => AppSizes.height24,
          ),
        ),
      ],
    );
  }
}

