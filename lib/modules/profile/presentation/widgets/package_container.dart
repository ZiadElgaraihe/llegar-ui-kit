import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/profile/domain/entities/premium_package_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/package_feature_list_tile.dart';
import 'package:llegar/modules/profile/presentation/widgets/price_per_month_row.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class PackageContainer extends StatelessWidget {
  const PackageContainer({
    super.key,
    this.onTap,
    required this.premiumPackageEntity,
  });

  final PremiumPackageEntity premiumPackageEntity;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450),
      child: InkWell(
        onTap: (onTap != null)
            ? () {
                futureDelayedNavigator(
                  () {
                    onTap!();
                  },
                );
              }
            : null,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 34,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: mainThemeColor(context),
              width: 2,
            ),
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                AppIcons.crown,
                colorFilter: ColorFilter.mode(
                  mainThemeColor(context),
                  BlendMode.srcATop,
                ),
              ),
              AppSizes.height12,
              PricePerMonthRow(premiumPackageEntity: premiumPackageEntity),
              const Divider(),
              Column(
                children: premiumPackageEntity
                    .features(context)
                    .map((feature) => PackageFeatureListTile(title: feature))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
