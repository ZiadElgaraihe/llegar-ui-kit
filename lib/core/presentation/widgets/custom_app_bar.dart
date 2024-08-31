import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/app_strings.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/value_based_on_locale.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.toolbarHeight,
  });

  final String? title;
  final double? toolbarHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      forceMaterialTransparency: true,
      title: (title != null)
          ? Text(
              title!,
              style: AppTextStyles.semiBold24(context).copyWith(
                color: AppColors.black,
                fontFamily: AppStrings.interFontFamily,
              ),
            )
          : null,
      leading: Navigator.canPop(context)
          ? IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                valueBasedOnLocale<String>(
                  context,
                  ltr: AppIcons.arrowLeft,
                  rtl: AppIcons.arrowRight,
                )!,
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight);
}
