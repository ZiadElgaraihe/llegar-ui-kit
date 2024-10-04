import 'package:flutter/material.dart';
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
        TextFormField(
          minLines: 3,
          maxLines: 5,
          cursorColor: AppColors.prussianBlue,
          decoration: InputDecoration(
            hintText: translate(context).writeYourCondition,
          ),
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
