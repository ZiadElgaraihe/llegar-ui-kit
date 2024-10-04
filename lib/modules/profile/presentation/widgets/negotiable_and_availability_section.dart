import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_checkbox.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class NegotiableAndAvailabilitySection extends StatelessWidget {
  const NegotiableAndAvailabilitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CustomCheckbox(
            onChanged: (isChecked) {},
          ),
          title: Text(translate(context).negotiable),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CustomCheckbox(
            onChanged: (isChecked) {},
          ),
          title: Text(translate(context).availability),
        ),
      ],
    );
  }
}
