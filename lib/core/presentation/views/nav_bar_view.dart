import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/core/domain/entities/nav_bar_entity.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  late final ValueNotifier<int> _currentIndex;
  late List<NavBarEntity> _items;

  @override
  void initState() {
    super.initState();
    _currentIndex = ValueNotifier<int>(0);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = <NavBarEntity>[
      NavBarEntity(
        label: translate(context).home,
        icon: AppIcons.homeOutlined,
        activeIcon: AppIcons.home,
      ),
      NavBarEntity(
        label: translate(context).orders,
        icon: AppIcons.ordersOutlined,
        activeIcon: AppIcons.orders,
      ),
      NavBarEntity(
        label: translate(context).inbox,
        icon: AppIcons.inboxOutlined,
        activeIcon: AppIcons.inbox,
      ),
      NavBarEntity(
        label: translate(context).wallet,
        icon: AppIcons.walletOutlined,
        activeIcon: AppIcons.wallet,
      ),
      NavBarEntity(
        label: translate(context).profile,
        icon: AppIcons.profileOutlined,
        activeIcon: AppIcons.profile,
      ),
    ];
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: _currentIndex,
        builder: (context, currentIndex, child) => BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            _currentIndex.value = value;
          },
          items: _items
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
      ),
    );
  }
}
