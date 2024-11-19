import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/domain/entities/nav_bar_entity.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class NavRail extends StatelessWidget {
  const NavRail({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
  });

  final ValueNotifier<int> currentIndex;
  final List<NavBarEntity> items;
  final void Function(int currentIndex) onTap;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return ValueListenableBuilder(
      valueListenable: currentIndex,
      builder: (context, currentIndex, child) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: height,
          ),
          child: IntrinsicHeight(
            child: NavigationRail(
              onDestinationSelected: onTap,
              destinations: items
                  .map(
                    (item) => NavigationRailDestination(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      selectedIcon: SvgPicture.asset(
                        item.activeIcon,
                        height: 22,
                        width: 22,
                        colorFilter: valueBasedOnTheme<ColorFilter>(
                          context,
                          listen: true,
                          dark: const ColorFilter.mode(
                            AppColors.orange,
                            BlendMode.srcATop,
                          ),
                        ),
                      ),
                      icon: SvgPicture.asset(
                        item.icon,
                        height: 22,
                        width: 22,
                        colorFilter: valueBasedOnTheme<ColorFilter>(
                          context,
                          listen: true,
                          dark: const ColorFilter.mode(
                            AppColors.orange,
                            BlendMode.srcATop,
                          ),
                        ),
                      ),
                      label: Text(item.label),
                    ),
                  )
                  .toList(),
              selectedIndex: currentIndex,
            ),
          ),
        ),
      ),
    );
  }
}
