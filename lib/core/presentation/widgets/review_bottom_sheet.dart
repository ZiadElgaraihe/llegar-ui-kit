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
    return Padding(
      // Adjusts the bottom padding to prevent the bottom sheet
      // from being hidden by the keyboard.
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: SizedBox(
        height: 450,
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                sliver: SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      Text(
                        translate(context).leaveAReview,
                        style: AppTextStyles.bold24(context),
                      ),
                      AppSizes.height16,
                      Text(
                        translate(context)
                            .pleaseGiveYourRatingAndAlsoYourReview,
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
                              onFuturePressed: () async {
                                await _onFuturePressed(context);
                              },
                              title: translate(context).submit,
                            ),
                          ),
                        ],
                      ),
                      AppSizes.height24,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onFuturePressed(BuildContext context) async {
    //remove this & add your logic
    await Future.delayed(const Duration(seconds: 2));

    if (!context.mounted) return;
    Navigator.pop(context);
  }
}
