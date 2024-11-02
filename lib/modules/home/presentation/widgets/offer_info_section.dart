import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/amount_entry_text_field.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class OfferInfoSection extends StatelessWidget {
  const OfferInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < AppSizes.expandedBreakpoint) {
      return Column(
        children: [
          AmountEntryTextField(
            enabled: false,
            setValue: (controller) {
              controller.text = '45';
            },
          ),
          AppSizes.height16,
          CustomTextFormField(
            controller: TextEditingController(
              text: 'My offer is \$45 and i will take it for 2 weeks.',
            ),
            enabled: false,
            minLines: 5,
            maxLines: 7,
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Expanded(
            child: AmountEntryTextField(
              enabled: false,
              setValue: (controller) {
                controller.text = '45';
              },
            ),
          ),
          AppSizes.width24,
          Expanded(
            child: CustomTextFormField(
              controller: TextEditingController(
                text: 'My offer is \$45 and i will take it for 2 weeks.',
              ),
              enabled: false,
              minLines: 5,
            ),
          ),
        ],
      );
    }
  }
}
