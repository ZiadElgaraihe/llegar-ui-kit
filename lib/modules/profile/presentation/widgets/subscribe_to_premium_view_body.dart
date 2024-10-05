import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/premium_package_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/package_container.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class SubscribeToPremiumViewBody extends StatelessWidget {
  const SubscribeToPremiumViewBody({
    super.key,
  });

  static final List<PremiumPackageEntity> _packages = <PremiumPackageEntity>[
    PremiumPackageEntity(
      price: '50.00',
      features: (context) => [
        '${translate(context).sharing} 15% ${translate(context).ofTheRentAmountWithTheApplication}',
        translate(context).notVerifiedAccount,
        '${translate(context).topOnSearchLevel} 3',
        '30 ${translate(context).daysOfSubscription}',
        '3 ${translate(context).ads}',
      ],
    ),
    PremiumPackageEntity(
      price: '80.00',
      features: (context) => [
        '${translate(context).sharing} 10% ${translate(context).ofTheRentAmountWithTheApplication}',
        translate(context).verifiedAccount,
        '${translate(context).topOnSearchLevel} 2',
        '30 ${translate(context).daysOfSubscription}',
        '7 ${translate(context).ads}',
      ],
    ),
    PremiumPackageEntity(
      price: '110.00',
      features: (context) => [
        '${translate(context).sharing} 5% ${translate(context).ofTheRentAmountWithTheApplication}',
        translate(context).verifiedAccount,
        '${translate(context).topOnSearchLevel} 1',
        '30 ${translate(context).daysOfSubscription}',
        '15 ${translate(context).ads}',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: AppSizes.bodyHorizontalPadding(context),
      children: [
        AppSizes.height12,
        Text(
          translate(context).subscribeToPremium,
          style: AppTextStyles.bold32(context),
          textAlign: TextAlign.center,
        ),
        AppSizes.height4,
        Text(
          translate(context).enjoyTheBestOffers,
          style: AppTextStyles.medium16(context).copyWith(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            ),
          ),
          textAlign: TextAlign.center,
        ),
        AppSizes.height24,
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 24,
          runSpacing: 24,
          children: _packages
              .map((package) => PackageContainer(premiumPackageEntity: package))
              .toList(),
        ),
        AppSizes.height24,
      ],
    );
  }
}
