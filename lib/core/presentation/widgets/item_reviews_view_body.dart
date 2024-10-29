import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/chat_entity.dart';
import 'package:llegar/core/presentation/widgets/comment_widget.dart';
import 'package:llegar/core/presentation/widgets/options_rating_item.dart';
import 'package:llegar/modules/home/presentation/widgets/options_bar.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
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
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                futureDelayedNavigator(
                  () {
                    _onCommentTapped(context);
                  },
                );
              },
              borderRadius: BorderRadius.circular(18),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CommentWidget(),
              ),
            ),
            separatorBuilder: (context, index) => AppSizes.height24,
          ),
        ),
      ],
    );
  }

  Future<Object?> _onCommentTapped(BuildContext context) {
    return Navigator.pushNamed(
      context,
      AppRoutes.chatView,
      arguments: ChatEntity(
        appBarTitle: 'Mohamed Galal',
        messages: [],
      ),
    );
  }
}
