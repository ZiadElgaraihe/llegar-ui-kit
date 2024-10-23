import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/premium_package_entity.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class PricePerMonthRow extends StatelessWidget {
  const PricePerMonthRow({
    super.key,
    required this.premiumPackageEntity,
  });

  final PremiumPackageEntity premiumPackageEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '\$${premiumPackageEntity.price}',
          style: AppTextStyles.bold32(context).copyWith(
            color: mainThemeColor(context),
          ),
        ),
        AppSizes.width8,
        Text(
          translate(context).perMonth,
          style: AppTextStyles.bold20(context).copyWith(
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
