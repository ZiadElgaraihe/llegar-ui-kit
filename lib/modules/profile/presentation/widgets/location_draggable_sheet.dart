import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/address_entity.dart';
import 'package:llegar/core/presentation/widgets/custom_checkbox.dart';
import 'package:llegar/core/presentation/widgets/custom_sliver_fill_remaining_footer.dart';
import 'package:llegar/modules/profile/presentation/widgets/location_details_data_section.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class LocationDraggableSheet extends StatelessWidget {
  const LocationDraggableSheet({
    super.key,
    required this.draggableController,
    this.addressEntity,
  });

  final AddressEntity? addressEntity;
  final DraggableScrollableController draggableController;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      controller: draggableController,
      initialChildSize: (addressEntity != null) ? 0.6 : 0.3,
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
                    LocationDetailsDataSection(
                      controller: (addressEntity != null)
                          ? TextEditingController(text: addressEntity!.title)
                          : null,
                      title: translate(context).locationName,
                    ),
                    AppSizes.height16,
                    LocationDetailsDataSection(
                      controller: (addressEntity != null)
                          ? TextEditingController(text: addressEntity!.address)
                          : null,
                      title: translate(context).locationDetails,
                    ),
                    AppSizes.height16,
                    Row(
                      children: [
                        CustomCheckbox(
                          initialValue: addressEntity?.isDefault,
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
              buttonTitle: (addressEntity != null)
                  ? translate(context).edit
                  : translate(context).add,
            ),
          ],
        ),
      ),
    );
  }
}
