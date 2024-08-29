import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/dots_indicator.dart';
import 'package:llegar/modules/auth/domain/entities/welcome_page_view_item_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/welcome_page_view_item.dart';
import 'package:llegar/utils/app_images.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({
    super.key,
    required this.currentPageIndexValueNotifier,
    required this.pageController,
  });

  final ValueNotifier<int> currentPageIndexValueNotifier;
  final PageController pageController;

  static const List<WelcomePageViewItemEntity> _items = [
    WelcomePageViewItemEntity(
      description:
          'The best rental app of the century to rent any thing rentable you want every day',
      image: AppImages.welcomeToLlegar,
      title: 'Welcome to LLEGAR',
    ),
    WelcomePageViewItemEntity(
      description:
          'Don’t worry about your data we have the best security system to safe your privacy',
      image: AppImages.secureApp,
      title: 'Secure App',
    ),
    WelcomePageViewItemEntity(
      description:
          'We guarantee that the rental process will be completed successfully.\n“We Delivered trust“',
      image: AppImages.makeDeal,
      title: 'Make a Deal',
    ),
    WelcomePageViewItemEntity(
      description:
          'We provide a service Two factor authentication To ensure that your account is safe from hacking',
      image: AppImages.twoFactorAuth,
      title: 'Two factor authentication',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          ExpandablePageView.builder(
            controller: pageController,
            itemCount: _items.length,
            itemBuilder: (context, index) => WelcomePageViewItem(
              welcomePageViewItemEntity: _items[index],
            ),
          ),
          const Spacer(),
          ValueListenableBuilder(
            valueListenable: currentPageIndexValueNotifier,
            builder: (context, currentPageIndex, child) => DotsIndicator(
              length: _items.length,
              currentPageIndex: currentPageIndex,
              dotSize: 8,
              horizontalPadding: 4,
            ),
          )
        ],
      ),
    );
  }
}
