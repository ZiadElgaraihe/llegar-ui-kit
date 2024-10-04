import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:llegar/core/presentation/widgets/custom_animated_dropdown.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/modules/profile/presentation/widgets/add_item_data_section.dart';
import 'package:llegar/modules/profile/presentation/widgets/add_item_photo_button.dart';
import 'package:llegar/modules/profile/presentation/widgets/negotiable_and_availability_section.dart';
import 'package:llegar/modules/profile/presentation/widgets/write_your_condition_section.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class AddItemViewBody extends StatelessWidget {
  const AddItemViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: AppSizes.bodySymmetricPadding(context),
      children: [
        const Center(child: AddItemPhotoButton()),
        AppSizes.height24,
        CustomAnimatedDropdown<String>(
          hintText: translate(context).rentType,
          items: [
            translate(context).transportations,
            translate(context).property,
            translate(context).clothes,
            translate(context).electronics,
            translate(context).playAreas,
            translate(context).eventRentals,
          ],
        ),
        AppSizes.height24,
        AddItemDataSection(title: translate(context).title),
        AddItemDataSection(
          title: translate(context).description,
          minLines: 1,
          maxLines: 5,
        ),
        AddItemDataSection(
          title: translate(context).pricePerDay,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
          ],
        ),
        AddItemDataSection(
          title: translate(context).shippingPrice,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
          ],
        ),
        AppSizes.height12,
        const WriteYourConditionSection(),
        AppSizes.height24,
        CustomAnimatedDropdown<String>(
          hintText: translate(context).city,
          items: <String>[
            translate(context).jerusalem,
            translate(context).baghdad,
            translate(context).damascus,
            translate(context).cairo,
            translate(context).rabat,
          ],
        ),
        AppSizes.height24,
        const NegotiableAndAvailabilitySection(),
        AppSizes.height24,
        Center(
          child: CustomElevatedButton(
            title: translate(context).share,
            onFuturePressed: () async {},
          ),
        ),
      ],
    );
  }
}
