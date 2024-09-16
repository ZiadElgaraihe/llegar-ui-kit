import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/utils/functions/value_based_on_locale.dart';
import 'package:llegar/utils/functions/value_based_on_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.actions,
    this.title,
    this.titleSpacing,
    this.toolbarHeight,
  });

  final List<Widget>? actions;
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
      leading: Navigator.canPop(context)
          ? IconButton(
              onPressed: () {
                futureDelayedNavigator(
                  () {
                    Navigator.pop(context);
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
}
