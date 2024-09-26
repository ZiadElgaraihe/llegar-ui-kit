import 'package:flutter/material.dart';
import 'package:llegar/core/domain/entities/nav_bar_entity.dart';

class NavBarViewBody extends StatelessWidget {
  const NavBarViewBody({
    super.key,
    required this.pageController,
    required this.currentIndex,
    required this.items,
  });

  final PageController pageController;
  final ValueNotifier<int> currentIndex;
  final List<NavBarEntity> items;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      onPageChanged: (value) {
        currentIndex.value = value;
      },
      itemCount: items.length,
      itemBuilder: (context, index) => items[index].page,
    );
  }
}
