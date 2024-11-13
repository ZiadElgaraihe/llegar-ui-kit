import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_checkbox.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class RememberMeRow extends StatelessWidget {
  const RememberMeRow({
    super.key,
    required this.onChanged,
  });

  final void Function(bool value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCheckbox(onChanged: onChanged),
        AppSizes.width8,
        Text(
          translate(context).rememberMe,
          style: AppTextStyles.medium15(context).copyWith(
            color: secondaryThemeColor(context),
            fontFamily: AppStrings.interFontFamily,
          ),
        ),
      ],
    );
  }
}
