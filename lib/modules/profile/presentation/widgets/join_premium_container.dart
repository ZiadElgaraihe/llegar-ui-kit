import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_locale.dart';

class JoinPremiumContainer extends StatelessWidget {
  const JoinPremiumContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.yellow, width: 2),
      ),
      child: InkWell(
        onTap: () {
          futureDelayedNavigator(
            () {
              Navigator.pushNamed(context, AppRoutes.subscribeToPremiumView);
            },
          );
        },
        splashColor: AppColors.yellow.withOpacity(0.3),
        overlayColor: WidgetStatePropertyAll(
          AppColors.yellow.withOpacity(0.1),
        ),
        borderRadius: BorderRadius.circular(30),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 17),
          child: Row(
            children: [
              SvgPicture.asset(AppIcons.crown),
              AppSizes.width12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      translate(context).joinPremium,
                      style: AppTextStyles.bold24(context).copyWith(
                        color: AppColors.yellow,
                      ),
                    ),
                    Text(
                      translate(context).enjoyTheBestDealsWithGreatFeatures,
                      style: AppTextStyles.medium16(context).copyWith(
                        color: AppColors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
              AppSizes.width12,
              SvgPicture.asset(
                valueBasedOnLocale<String>(
                  context,
                  ltr: AppIcons.chevronRight,
                  rtl: AppIcons.chevronLeft,
                )!,
                colorFilter: const ColorFilter.mode(
                  AppColors.yellow,
                  BlendMode.srcATop,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
