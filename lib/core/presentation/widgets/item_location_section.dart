import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ItemLocationSection extends StatelessWidget {
  const ItemLocationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          translate(context).location,
          style: AppTextStyles.bold16(context).copyWith(
            color: secondaryThemeColor(context),
          ),
        ),
        AppSizes.height16,
        CustomTextFormField(
          readOnly: true,
          controller: TextEditingController(text: 'Cairo'),
        ),
      ],
    );
  }
}

