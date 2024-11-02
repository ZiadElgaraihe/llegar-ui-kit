import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';

class ProfileSummaryInfoListTile extends StatelessWidget {
  const ProfileSummaryInfoListTile({
    super.key,
    required this.icon,
    required this.isPositiveInfo,
    required this.title,
  });

  final String icon;
  final bool isPositiveInfo;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(
        icon,
        height: 32,
        width: 32,
        colorFilter: ColorFilter.mode(
          isPositiveInfo ? AppColors.green : AppColors.red,
          BlendMode.srcATop,
        ),
      ),
      title: Text(
        title,
        style: AppTextStyles.regular24(context).copyWith(
          fontFamily: AppStrings.interFontFamily,
          color: isPositiveInfo ? AppColors.green : AppColors.red,
        ),
      ),
    );
  }
}
