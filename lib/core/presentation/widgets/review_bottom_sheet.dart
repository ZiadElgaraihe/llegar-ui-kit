import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_rating_bar.dart';
import 'package:llegar/core/presentation/widgets/custom_secondary_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/review_comment_text_form_field.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ReviewBottomSheet extends StatelessWidget {
  const ReviewBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Text(
                    translate(context).leaveAReview,
                    style: AppTextStyles.bold24(context),
                  ),
                  AppSizes.height16,
                  Text(
                    translate(context).pleaseGiveYourRatingAndAlsoYourReview,
                    style: AppTextStyles.medium16(context).copyWith(
                      color: secondaryThemeColor(context),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  AppSizes.height24,
                  CustomRatingBar(
                    onRatingUpdate: (rating) {},
                  ),
                  AppSizes.height24,
                  const ReviewCommentTextFormField(),
                  const Expanded(child: AppSizes.height24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: CustomSecondaryElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          title: translate(context).cancel,
                        ),
                      ),
                      AppSizes.width36,
                      Flexible(
                        child: CustomElevatedButton(
                          onFuturePressed: () async {},
                          title: translate(context).submit,
                        ),
                      ),
                    ],
                  ),
                  AppSizes.height24,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
