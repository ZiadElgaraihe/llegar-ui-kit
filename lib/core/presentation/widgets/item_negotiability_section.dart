import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ItemNegotiabilitySection extends StatelessWidget {
  const ItemNegotiabilitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.cancel_rounded,
          color: AppColors.red,
          size: 24,
        ),
        AppSizes.width8,
        Expanded(
          child: Text(
            translate(context).notNegotiable,
            style: AppTextStyles.medium20(context).copyWith(
              color: AppColors.red,
            ),
          ),
        ),
      ],
    );

    //todo: Use This code if item is Negotiable
    // return Row(
    //   children: [
    //     const Icon(
    //       Icons.check_circle_rounded,
    //       color: AppColors.green,
    //       size: 24,
    //     ),
    //     AppSizes.width8,
    //     Expanded(
    //       child: Text(
    //         translate(context).negotiable,
    //         style: AppTextStyles.medium20(context).copyWith(
    //           color: AppColors.green,
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
