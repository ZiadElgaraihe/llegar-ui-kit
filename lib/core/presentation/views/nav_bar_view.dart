import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/nav_bar_entity.dart';
import 'package:llegar/core/presentation/widgets/nav_bar.dart';
import 'package:llegar/core/presentation/widgets/nav_bar_view_body.dart';
import 'package:llegar/core/presentation/widgets/nav_drawer.dart';
import 'package:llegar/core/presentation/widgets/nav_rail.dart';
import 'package:llegar/modules/home/presentation/views/home_view.dart';
import 'package:llegar/modules/inbox/presentation/views/inbox_view.dart';
import 'package:llegar/modules/orders/presentation/views/my_orders_view.dart';
import 'package:llegar/modules/profile/presentation/views/profile_view.dart';
import 'package:llegar/modules/wallet/presentation/views/my_wallet_view.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  late final ValueNotifier<int> _currentIndex;
  late final PageController _pageController;
  late List<NavBarEntity> _items;

  @override
  void initState() {
    super.initState();
    _currentIndex = ValueNotifier<int>(0);
    _pageController = PageController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = <NavBarEntity>[
      NavBarEntity(
        label: translate(context).home,
        icon: AppIcons.homeOutlined,
        activeIcon: AppIcons.home,
        page: const HomeView(),
      ),
      NavBarEntity(
        label: translate(context).orders,
        icon: AppIcons.ordersOutlined,
        activeIcon: AppIcons.orders,
        page: MyOrdersView(
          onBackPressed: () {
            _animateToPage(0);
          },
        ),
      ),
      NavBarEntity(
        label: translate(context).inbox,
        icon: AppIcons.inboxOutlined,
        activeIcon: AppIcons.inbox,
        page: InboxView(
          onBackPressed: () {
            _animateToPage(0);
          },
        ),
      ),
      NavBarEntity(
        label: translate(context).wallet,
        icon: AppIcons.walletOutlined,
        activeIcon: AppIcons.wallet,
        page: MyWalletView(
          onBackPressed: () {
            _animateToPage(0);
          },
        ),
      ),
      NavBarEntity(
        label: translate(context).profile,
        icon: AppIcons.profileOutlined,
        activeIcon: AppIcons.profile,
        page: ProfileView(
          onBackPressed: () {
            _animateToPage(0);
          },
        ),
      ),
    ];
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _animateToPage(int currentIndex) {
    _pageController.animateToPage(
      currentIndex,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Row(
        children: [
          // Check if width ≥ 840 => check if width ≥ 840 and width < 1200
          // return NavRail else return NavDrawer
          if (width >= AppSizes.expandedBreakpoint)
            (width >= AppSizes.expandedBreakpoint &&
                    width < AppSizes.largeBreakpoint)
                ? NavRail(
                    currentIndex: _currentIndex,
                    items: _items,
                    onTap: _animateToPage,
                  )
                : SizedBox(
                    width: 250,
                    child: NavDrawer(
                      currentIndex: _currentIndex,
                      items: _items,
                      onTap: _animateToPage,
                    ),
                  ),
          Expanded(
            child: NavBarViewBody(
              currentIndex: _currentIndex,
              items: _items,
              pageController: _pageController,
            ),
          ),
        ],
      ),
      // Check if width < 840 return NavBar
      bottomNavigationBar: (width < AppSizes.expandedBreakpoint)
          ? NavBar(
              currentIndex: _currentIndex,
              items: _items,
              onTap: _animateToPage,
            )
          : null,
    );
  }
}
