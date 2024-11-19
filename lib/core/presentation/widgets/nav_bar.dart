import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/domain/entities/nav_bar_entity.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class NavBar extends StatelessWidget {
  const NavBar({
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
    return ValueListenableBuilder(
      valueListenable: currentIndex,
      builder: (context, currentIndex, child) => BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: items
            .map(
              (item) => BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: SvgPicture.asset(
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
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: SvgPicture.asset(
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
                ),
                label: item.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
