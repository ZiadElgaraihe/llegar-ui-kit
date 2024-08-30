import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/dots_indicator.dart';
import 'package:llegar/modules/auth/domain/entities/welcome_page_view_item_entity.dart';
import 'package:llegar/modules/auth/presentation/widgets/welcome_page_view_item.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({
    super.key,
    required this.currentPageIndexValueNotifier,
    required this.items,
    required this.pageController,
  });

  final ValueNotifier<int> currentPageIndexValueNotifier;
  final List<WelcomePageViewItemEntity> items;
  final PageController pageController;

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
            itemCount: items.length,
            itemBuilder: (context, index) => WelcomePageViewItem(
              welcomePageViewItemEntity: items[index],
            ),
          ),
          const Spacer(),
          ValueListenableBuilder(
            valueListenable: currentPageIndexValueNotifier,
            builder: (context, currentPageIndex, child) => DotsIndicator(
              length: items.length,
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
