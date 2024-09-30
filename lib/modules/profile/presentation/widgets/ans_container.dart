import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/value_based_on_locale.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class AnsContainer extends StatelessWidget {
  const AnsContainer({
    super.key,
    required this.answerNumber,
  });

  final int answerNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      constraints: const BoxConstraints(minHeight: 302),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: valueBasedOnTheme<Color>(
            context,
            light: AppColors.prussianBlue,
            dark: AppColors.orange,
          )!,
          width: 3,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            valueBasedOnLocale<String>(
              context,
              ltr: 'Question $answerNumber ?',
              rtl: 'السؤال $answerNumber ؟',
            )!,
            style: AppTextStyles.bold20(context),
            textAlign: TextAlign.start,
          ),
          const Divider(
            color: AppColors.grey,
            height: 32,
            indent: 0,
            endIndent: 0,
          ),
          Text(
            valueBasedOnLocale<String>(
              context,
              ltr: 'Answer $answerNumber',
              rtl: 'الإجابة $answerNumber',
            )!,
            style: AppTextStyles.bold20(context),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
