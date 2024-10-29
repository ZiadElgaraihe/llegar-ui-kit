import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_like_button.dart';
import 'package:llegar/core/presentation/widgets/profile_photo.dart';
import 'package:llegar/core/presentation/widgets/rating_row_widget.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/value_based_on_locale.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const ProfilePhoto(size: 64, side: BorderSide.none),
            AppSizes.width12,
            Expanded(
              child: Text(
                'Abdalrahman Abdelaziz',
                style: AppTextStyles.semiBold20(context).copyWith(
                  color: mainThemeColor(context),
                  fontFamily: AppStrings.interFontFamily,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            AppSizes.width12,
            const RatingRowWidget(),
          ],
        ),
        AppSizes.height12,
        Text(
          'This camera is awesome and give more details of picture.',
          style: AppTextStyles.medium20(context).copyWith(
            color: secondaryThemeColor(context),
          ),
        ),
        AppSizes.height8,
        Row(
          children: [
            CustomLikeButton(
              unlikedColor: mainThemeColor(context),
              isLiked: true,
              onLikeTapped: (isLiked) {},
            ),
            AppSizes.width4,
            Text(
              '62',
              style: AppTextStyles.medium20(context).copyWith(
                color: mainThemeColor(context),
              ),
            ),
            AppSizes.width16,
            Text(
              valueBasedOnLocale<String>(
                context,
                ltr: '7 days ago',
                rtl: 'منذ 7 أيام',
              )!,
              style: AppTextStyles.medium16(context).copyWith(
                color: mainThemeColor(context),
              ),
            ),
          ],
        )
      ],
    );
  }
}
