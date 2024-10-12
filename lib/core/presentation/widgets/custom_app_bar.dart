import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/value_based_on_locale.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.actions,
    this.onBackPressed,
    this.title,
    this.titleSpacing,
    this.toolbarHeight,
  });

  final List<Widget>? actions;
  final VoidCallback? onBackPressed;
  final String? title;
  final double? titleSpacing;
  final double? toolbarHeight;

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: toolbarHeight,
      forceMaterialTransparency: true,
      actions: actions,
      title: (title != null) ? Text(title!) : null,
      titleSpacing: titleSpacing ?? 8,
      centerTitle: false,
      leading: (Navigator.canPop(context) || onBackPressed != null)
          ? IconButton(
              onPressed: () {
                futureDelayedNavigator(
                  () {
                    _handleBackPress(context);
                  },
                );
              },
              icon: SvgPicture.asset(
                valueBasedOnLocale<String>(
                  context,
                  ltr: AppIcons.arrowLeft,
                  rtl: AppIcons.arrowRight,
                )!,
                colorFilter: valueBasedOnTheme<ColorFilter>(
                  context,
                  dark: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcATop,
                  ),
                ),
              ),
            )
          : null,
    );
  }

  void _handleBackPress(BuildContext context) {
    if (onBackPressed != null) {
      onBackPressed!();
    } else {
      Navigator.pop(context);
    }
  }
}
