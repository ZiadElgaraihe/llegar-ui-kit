import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_checkbox.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class LocationDraggableSheet extends StatelessWidget {
  const LocationDraggableSheet({
    super.key,
    required this.draggableController,
  });

  final DraggableScrollableController draggableController;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      controller: draggableController,
      initialChildSize: 0.3,
      minChildSize: 0.3,
      maxChildSize: 0.6,
      builder: (context, scrollController) => Container(
        padding: const EdgeInsets.only(top: 12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(40),
          ),
        ),
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverPadding(
              padding: AppSizes.bodyHorizontalPadding(context),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      width: 50,
                      decoration: BoxDecoration(
                        color: secondaryThemeColor(context),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    AppSizes.height16,
                    Text(
                      translate(context).locationDetails,
                      style: AppTextStyles.bold24(context),
                    ),
                    AppSizes.height8,
                    const Divider(),
                    AppSizes.height16,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          translate(context).locationName,
                          style: AppTextStyles.bold16(context),
                        ),
                        AppSizes.height12,
                        const CustomTextFormField(),
                      ],
                    ),
                    AppSizes.height16,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          translate(context).locationDetails,
                          style: AppTextStyles.bold16(context),
                        ),
                        AppSizes.height12,
                        const CustomTextFormField(),
                      ],
                    ),
                    AppSizes.height16,
                    Row(
                      children: [
                        CustomCheckbox(
                          onChanged: (isChecked) {},
                        ),
                        AppSizes.width8,
                        Expanded(
                          child: Text(
                            translate(context).makeThisAsTheDefaultLocation,
                            style: AppTextStyles.medium14(context).copyWith(
                              color: secondaryThemeColor(context),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            CustomSliverFillRemainingFooter(
              padding: AppSizes.bodyHorizontalPadding(context),
              onFuturePressed: () async {},
              buttonTitle: translate(context).add,
            ),
          ],
        ),
      ),
    );
  }
}
