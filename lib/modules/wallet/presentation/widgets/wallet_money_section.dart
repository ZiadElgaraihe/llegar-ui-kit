import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class WalletMoneySection extends StatelessWidget {
  const WalletMoneySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            translate(context).money,
            style: AppTextStyles.bold20(context).copyWith(
              fontFamily: AppStrings.interFontFamily,
            ),
          ),
        ),
        AppSizes.height16,
        Container(
          height: 202,
          constraints: const BoxConstraints(
            maxWidth: AppSizes.expandedBreakpoint,
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: AppColors.antiFlashWhite,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            '\$420.50',
            style: AppTextStyles.bold48(context),
          ),
        ),
      ],
    );
  }
}
