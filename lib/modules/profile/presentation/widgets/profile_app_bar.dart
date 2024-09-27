import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      leadingWidth: 54,
      leading: Padding(
        padding: const EdgeInsetsDirectional.only(start: 16.0),
        child: SvgPicture.asset(
          valueBasedOnTheme<String>(
            context,
            listen: true,
            light: AppImages.logo,
            dark: AppImages.logoDark,
          )!,
        ),
      ),
      title: Text(
        translate(context).profile,
        style: AppTextStyles.bold24(context, responsive: false).copyWith(
          color: valueBasedOnTheme<Color>(
            context,
            listen: true,
            light: AppColors.prussianBlue,
            dark: AppColors.orange,
          )!,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
