import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:llegar/core/presentation/widgets/custom_animated_dropdown.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/modules/profile/presentation/widgets/add_item_data_section.dart';
import 'package:llegar/modules/profile/presentation/widgets/add_item_photo_button.dart';
import 'package:llegar/modules/profile/presentation/widgets/negotiable_and_availability_section.dart';
import 'package:llegar/modules/profile/presentation/widgets/write_your_condition_section.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/enums/message_type.dart';
import 'package:llegar/shared/utils/functions/show_message_dialog.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class AddItemViewBody extends StatelessWidget {
  const AddItemViewBody({
    super.key,
    required this.isEdit,
  });

  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: AppSizes.bodySymmetricPadding(context),
      children: [
        // Enables the addition of multiple images.
        // The `Center` widget is utilized to manage the maximum width property
        // of the button, set to 500. It is advisable to retain the `Center`
        // widget for maintaining design integrity on wider devices.
        const Center(child: AddItemPhotoButton()),
        AppSizes.height24,
        CustomAnimatedDropdown<String>(
          hintText: translate(context).rentType,
          items: [
            translate(context).transportation,
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
          keyboardType: TextInputType.multiline,
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
            title: isEdit ? translate(context).edit : translate(context).share,
            onFuturePressed: () async {
              await _onShareItemPressed(context);
            },
          ),
        ),
      ],
    );
  }

  Future<void> _onShareItemPressed(BuildContext context) async {
    //remove this & add your logic
    await Future.delayed(const Duration(seconds: 2));

    if (!context.mounted) return;
    showMessageDialog(
      context,
      messageType: MessageType.success,
      title: translate(context).success,
      message: isEdit
          ? translate(context).yourItemHasBeenModifiedSuccessfully
          : translate(context).yourItemHasBeenAddedSuccessfully,
    ).then(
      (value) {
        if (!context.mounted) return;
        Navigator.pop(context);
      },
    );

    //You can use this code in case of failure
    /*
    showMessageDialog(
      context,
      messageType: MessageType.failed,
      title: translate(context).failed,
      message: translate(context)
          .anErrorOccurredWhileProcessingYourRequestPleaseTryAgain,
    );
    */
  }
}
