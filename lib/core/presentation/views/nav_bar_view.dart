import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/nav_bar_entity.dart';
import 'package:llegar/core/presentation/widgets/nav_bar.dart';
import 'package:llegar/core/presentation/widgets/nav_bar_view_body.dart';
import 'package:llegar/modules/home/presentation/views/home_view.dart';
import 'package:llegar/modules/inbox/presentation/views/inbox_view.dart';
import 'package:llegar/modules/orders/presentation/views/my_orders_view.dart';
import 'package:llegar/modules/profile/presentation/views/profile_view.dart';
import 'package:llegar/modules/wallet/presentation/views/my_wallet_view.dart';
import 'package:llegar/shared/constants/app_icons.dart';
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
        page: MyOrdersView(onBackPressed: _onBackPressed),
      ),
      NavBarEntity(
        label: translate(context).inbox,
        icon: AppIcons.inboxOutlined,
        activeIcon: AppIcons.inbox,
        page: InboxView(onBackPressed: _onBackPressed),
      ),
      NavBarEntity(
        label: translate(context).wallet,
        icon: AppIcons.walletOutlined,
        activeIcon: AppIcons.wallet,
        page: MyWalletView(onBackPressed: _onBackPressed),
      ),
      NavBarEntity(
        label: translate(context).profile,
        icon: AppIcons.profileOutlined,
        activeIcon: AppIcons.profile,
        page: ProfileView(onBackPressed: _onBackPressed),
      ),
    ];
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    _pageController.dispose();
    super.dispose();
  }

  /// Animate to home view on back pressed
  void _onBackPressed() {
    _pageController.animateToPage(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavBarViewBody(
        currentIndex: _currentIndex,
        items: _items,
        pageController: _pageController,
      ),
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        items: _items,
        pageController: _pageController,
      ),
    );
  }
}
