import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_like_button.dart';
import 'package:llegar/core/presentation/widgets/leave_review_button.dart';
import 'package:llegar/core/presentation/widgets/rating_row_widget.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    this.appearLeaveReviewButton = false,
    this.appearLikeButton = true,
    this.isLiked = false,
    this.onLikeTapped,
  });

  final bool appearLeaveReviewButton;
  final bool appearLikeButton;

  ///This is initial value you can get current value from onLikeTapped
  final bool isLiked;
  final void Function(bool isLiked)? onLikeTapped;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            AspectRatio(
              aspectRatio: 382 / 307,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  AppImages.car,
                  fit: BoxFit.fill,
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
                'Car, Giza',
                style: AppTextStyles.bold20(context),
              ),
            ),
            const RatingRowWidget(),
          ],
        ),
        AppSizes.height8,
        Text(
          'This spacious BMW is perfect for long drives and local errands.',
          style: AppTextStyles.semiBold16(context).copyWith(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            ),
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        AppSizes.height4,
        Text(
          '\$230 /${translate(context).day}',
          style: AppTextStyles.bold20(context),
        ),
      ],
    );
  }
}
