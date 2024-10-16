import 'dart:async';

import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/dots_indicator.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_item.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class SpecialOffersPageView extends StatefulWidget {
  const SpecialOffersPageView({
    super.key,
  });

  @override
  State<SpecialOffersPageView> createState() => _SpecialOffersPageViewState();
}

class _SpecialOffersPageViewState extends State<SpecialOffersPageView> {
  late PageController _pageController;
  late ValueNotifier<int> _currentPage;
  late Timer _timer;

  ///This variable represents the length of the list
  ///and will be dynamically replaced with the actual length
  final int _lenght = 4;

  @override
  void initState() {
    super.initState();
    _currentPage = ValueNotifier<int>(0);
    _pageController = PageController(initialPage: 0);
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      int nextPage;

      if (_currentPage.value < _lenght - 1) {
        nextPage = _currentPage.value + 1;
      } else {
        nextPage = 0;
      }

      _pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    _currentPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              _currentPage.value = value;
            },
            itemCount: _lenght,
            itemBuilder: (context, index) => const SpecialOffersItem(),
          ),
        ),
        AppSizes.height4,
        ValueListenableBuilder(
          valueListenable: _currentPage,
          builder: (context, currentPage, child) => DotsIndicator(
            length: _lenght,
            currentPageIndex: currentPage,
            dotSize: 3,
            horizontalPadding: 2,
            inactiveColor: AppColors.darkGrey,
          ),
        ),
      ],
    );
  }
}
