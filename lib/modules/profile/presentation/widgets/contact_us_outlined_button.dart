import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class ContactUsOutlinedButton extends StatelessWidget {
  const ContactUsOutlinedButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.title,
  });

  final String icon;
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            colorFilter: valueBasedOnTheme<ColorFilter>(
              context,
              dark: const ColorFilter.mode(
                AppColors.orange,
                BlendMode.srcATop,
              ),
            ),
          ),
          AppSizes.width16,
          Text(
            title,
            style: AppTextStyles.bold20(context).copyWith(
              color: valueBasedOnTheme<Color>(
                context,
                light: AppColors.black,
                dark: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
