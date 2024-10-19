import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class FilterRatingItem extends StatelessWidget {
  const FilterRatingItem({
    super.key,
    required this.isSelected,
    required this.item,
  });

  final bool isSelected;
  final String item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (item != translate(context).all) ...[
          SvgPicture.asset(
            AppIcons.star,
            height: 20,
            width: 20,
            colorFilter: isSelected
                ? const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcATop,
                  )
                : valueBasedOnTheme<ColorFilter>(
                    context,
                    dark: const ColorFilter.mode(
                      AppColors.orange,
                      BlendMode.srcATop,
                    ),
                  ),
          ),
          AppSizes.width4,
        ],
        Text(
          item,
          style: AppTextStyles.bold20(context).copyWith(
            color: isSelected ? AppColors.white : null,
          ),
        ),
      ],
    );
  }
}
