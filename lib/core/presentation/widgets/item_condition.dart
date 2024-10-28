import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_checkbox.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class ItemCondition extends StatelessWidget {
  const ItemCondition({
    super.key,
    required this.onChanged,
    required this.title,
  });

  final void Function(bool? isChecked) onChanged;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCheckbox(
          onChanged: onChanged,
        ),
        AppSizes.width8,
        Expanded(
          child: Text(
            title,
            style: AppTextStyles.medium20(context).copyWith(
              color: secondaryThemeColor(context),
            ),
          ),
        ),
      ],
    );
  }
}
