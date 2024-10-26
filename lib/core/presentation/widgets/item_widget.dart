import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_like_button.dart';
import 'package:llegar/core/presentation/widgets/leave_review_button.dart';
import 'package:llegar/core/presentation/widgets/rating_row_widget.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    this.appearLeaveReviewButton = false,
    this.appearLikeButton = true,
    this.isLiked = false,
    this.onLikeTapped,
    this.onTap,
  });

  final bool appearLeaveReviewButton;
  final bool appearLikeButton;

  ///This is initial value you can get current value from onLikeTapped
  final bool isLiked;
  final void Function(bool isLiked)? onLikeTapped;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: (onTap != null)
          ? WidgetStateMouseCursor.clickable
          : MouseCursor.defer,
      child: GestureDetector(
        onTap: (onTap != null)
            ? () {
                futureDelayedNavigator(onTap!);
              }
            : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 382 / 307,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      AppImages.camera,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (appearLikeButton)
                  PositionedDirectional(
                    top: 16,
                    end: 16,
                    child: CustomLikeButton(
                      isLiked: isLiked,
                      onLikeTapped: onLikeTapped,
                    ),
                  ),
                if (appearLeaveReviewButton)
                  const PositionedDirectional(
                    top: 16,
                    start: 16,
                    child: LeaveReviewButton(),
                  ),
              ],
            ),
            AppSizes.height8,
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Canon EOS R6, cairo',
                    style: AppTextStyles.bold20(context),
                  ),
                ),
                const RatingRowWidget(),
              ],
            ),
            AppSizes.height8,
            Text(
              'It features a full-frame CMOS sensor with a resolution of 20.1 megapixels and is capable of shooting up to 12 frames per second with the mechanical shutter or up to 20 frames per second with the electronic shutter.',
              style: AppTextStyles.semiBold16(context).copyWith(
                color: secondaryThemeColor(context),
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            AppSizes.height4,
            Text(
              '\$50 /${translate(context).day}',
              style: AppTextStyles.bold20(context),
            ),
          ],
        ),
      ),
    );
  }
}
