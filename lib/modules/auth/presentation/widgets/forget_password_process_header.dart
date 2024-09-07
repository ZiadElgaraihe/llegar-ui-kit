import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class ForgetPasswordProcessHeader extends StatelessWidget {
  const ForgetPasswordProcessHeader({
    super.key,
    required this.icon,
    required this.subTitle,
    required this.title,
  });

  final String icon;
  final String subTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSizes.height12,
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            children: [
              Text(
                title,
                style: AppTextStyles.bold32(context),
              ),
              const SizedBox(width: 4),
              SvgPicture.asset(icon),
            ],
          ),
        ),
        AppSizes.height12,
        Text(
          subTitle,
          style: AppTextStyles.medium16(context).copyWith(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            )!,
          ),
        ),
      ],
    );
  }
}
