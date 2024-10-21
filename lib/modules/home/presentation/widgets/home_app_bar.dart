import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/modules/home/presentation/widgets/home_app_bar_title_section.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      title: const HomeAppBarTitleSection(),
      actions: [
        IconButton(
          onPressed: () {
            _onNotificationPressed(context);
          },
          icon: SvgPicture.asset(
            AppIcons.notificationOutlined,
            colorFilter: valueBasedOnTheme<ColorFilter>(
              context,
              dark: const ColorFilter.mode(
                AppColors.orange,
                BlendMode.srcATop,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            _onFavouritePressed(context);
          },
          icon: SvgPicture.asset(
            AppIcons.favourite,
            colorFilter: valueBasedOnTheme<ColorFilter>(
              context,
              dark: const ColorFilter.mode(
                AppColors.orange,
                BlendMode.srcATop,
              ),
            ),
          ),
        ),
        AppSizes.width16,
      ],
    );
  }

  void _onFavouritePressed(BuildContext context) {
    futureDelayedNavigator(() {
      Navigator.pushNamed(context, AppRoutes.myWishlistView);
    });
  }

  void _onNotificationPressed(BuildContext context) {
    futureDelayedNavigator(() {
      Navigator.pushNamed(context, AppRoutes.notificationView);
    });
  }
}
