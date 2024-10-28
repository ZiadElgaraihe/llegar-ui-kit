import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ItemDetailsSection extends StatelessWidget {
  const ItemDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Canon EOS R6, cairo',
          style: AppTextStyles.semiBold30(context),
        ),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  AppIcons.star,
                  colorFilter: ColorFilter.mode(
                    secondaryThemeColor(context),
                    BlendMode.srcATop,
                  ),
                ),
                AppSizes.width8,
                Text(
                  '4.5 (70 ${translate(context).reviews})',
                  style: AppTextStyles.semiBold20(context).copyWith(
                    color: secondaryThemeColor(context),
                  ),
                ),
              ],
            ),
            Text(
              translate(context).available,
              style: AppTextStyles.semiBold20(context).copyWith(
                color: AppColors.green,
              ),
            ),
            //todo: Use this code if item isn't available
            //Text(
            //   translate(context).notAvailable,
            //   style: AppTextStyles.semiBold20(context).copyWith(
            //     color: AppColors.red,
            //   ),
            // ),
          ],
        ),
        AppSizes.height16,
        Text(
          translate(context).description,
          style: AppTextStyles.semiBold24(context),
        ),
        AppSizes.height16,
        Text(
          'It features a full-frame CMOS sensor with a resolution of 20.1 megapixels and is capable of shooting up to 12 frames per second with the mechanical shutter or up to 20 frames per second with the electronic shutter. ',
          style: AppTextStyles.medium20(context).copyWith(
            color: secondaryThemeColor(context),
          ),
        ),
      ],
    );
  }
}
