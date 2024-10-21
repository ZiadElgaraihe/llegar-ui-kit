import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/dots_indicator.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_item.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class SpecialOffersCarouselSlider extends StatefulWidget {
  const SpecialOffersCarouselSlider({
    super.key,
  });

  @override
  State<SpecialOffersCarouselSlider> createState() =>
      _SpecialOffersCarouselSliderState();
}

class _SpecialOffersCarouselSliderState
    extends State<SpecialOffersCarouselSlider> {
  late ValueNotifier<int> _currentPage;

  ///This variable represents the length of the list
  ///and will be dynamically replaced with the actual length
  final int _lenght = 4;

  @override
  void initState() {
    super.initState();
    _currentPage = ValueNotifier<int>(0);
  }

  @override
  void dispose() {
    _currentPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              initialPage: 0,
              aspectRatio: 400 / 172,
              viewportFraction: 1,
              autoPlayAnimationDuration: const Duration(milliseconds: 400),
              onPageChanged: (index, reason) {
                _currentPage.value = index;
              },
            ),
            items: List.generate(_lenght, (index) => const SpecialOffersItem()),
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
