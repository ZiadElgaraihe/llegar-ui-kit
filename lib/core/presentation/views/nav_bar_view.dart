import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/nav_bar_entity.dart';
import 'package:llegar/core/presentation/widgets/nav_bar.dart';
import 'package:llegar/core/presentation/widgets/nav_bar_view_body.dart';
import 'package:llegar/modules/inbox/presentation/views/inbox_view.dart';
import 'package:llegar/modules/orders/presentation/views/my_orders_view.dart';
import 'package:llegar/modules/profile/presentation/views/profile_view.dart';
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
        page: const Center(child: Text('Home')),
      ),
      NavBarEntity(
        label: translate(context).orders,
        icon: AppIcons.ordersOutlined,
        activeIcon: AppIcons.orders,
        page: MyOrdersView(pageController: _pageController),
      ),
      NavBarEntity(
        label: translate(context).inbox,
        icon: AppIcons.inboxOutlined,
        activeIcon: AppIcons.inbox,
        page: InboxView(pageController: _pageController),
      ),
      NavBarEntity(
        label: translate(context).wallet,
        icon: AppIcons.walletOutlined,
        activeIcon: AppIcons.wallet,
        page: const Center(child: Text('Wallet')),
      ),
      NavBarEntity(
        label: translate(context).profile,
        icon: AppIcons.profileOutlined,
        activeIcon: AppIcons.profile,
        page: const ProfileView(),
      ),
    ];
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    _pageController.dispose();
    super.dispose();
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
