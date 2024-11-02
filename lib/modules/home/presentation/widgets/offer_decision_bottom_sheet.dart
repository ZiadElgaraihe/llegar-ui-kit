import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_secondary_elevated_button.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class OfferDecisionBottomSheet extends StatelessWidget {
  const OfferDecisionBottomSheet({
    super.key,
    required this.message,
    required this.onFuturePressed,
    required this.title,
  });

  final String message;
  final Future<void> Function() onFuturePressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.bodyHorizontalPadding(context),
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.semiBold24(context).copyWith(
              fontFamily: AppStrings.interFontFamily,
              color: mainThemeColor(context),
            ),
          ),
          AppSizes.height16,
          Text(
            message,
            style: AppTextStyles.semiBold16(context).copyWith(
              fontFamily: AppStrings.interFontFamily,
              color: secondaryThemeColor(context),
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: CustomSecondaryElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  title: translate(context).cancel,
                ),
              ),
              AppSizes.width36,
              Flexible(
                child: CustomElevatedButton(
                  onFuturePressed: onFuturePressed,
                  title: title,
                ),
              ),
            ],
          ),
          AppSizes.height24,
        ],
      ),
    );
  }
}
