import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';

class SpecialOffersItem extends StatelessWidget {
  const SpecialOffersItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '25%',
                  style: width > 400
                      ? AppTextStyles.bold40(context)
                      : AppTextStyles.bold32(context),
                ),
                const Flexible(child: AppSizes.height16),
                Text(
                  'Week Deals!',
                  style: AppTextStyles.semiBold16(context),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Flexible(child: AppSizes.height16),
                Text(
                  'Get a new car discount, offer ends this week',
                  style: AppTextStyles.regular10(context).copyWith(
                    color: AppColors.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          AppSizes.width8,
          Expanded(
            child: Image.asset(
              AppImages.advertisementCar,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
    );
  }
}
