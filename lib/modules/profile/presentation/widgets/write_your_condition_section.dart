import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class WriteYourConditionSection extends StatelessWidget {
  const WriteYourConditionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          minLines: 3,
          maxLines: 5,
          hintText: translate(context).writeYourCondition,
          keyboardType: TextInputType.multiline,
        ),
        Text(
          translate(context).notRequired,
          style: AppTextStyles.semiBold20(context).copyWith(
            color: AppColors.green,
          ),
        ),
      ],
    );
  }
}
