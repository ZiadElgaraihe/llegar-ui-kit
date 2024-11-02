import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/value_based_on_locale.dart';

/// This widget is designed to display left and right arrow buttons for CarouselSlider
/// specifically tailored for desktop devices such as laptops and PCs.
class DesktopCarouselSliderArrows extends StatefulWidget {
  const DesktopCarouselSliderArrows({
    super.key,
    required this.builder,
  });

  final Widget Function(CarouselSliderController? carouselController) builder;

  @override
  State<DesktopCarouselSliderArrows> createState() =>
      _DesktopCarouselSliderArrowsState();
}

class _DesktopCarouselSliderArrowsState
    extends State<DesktopCarouselSliderArrows> {
  late final CarouselSliderController? _sliderController;

  @override
  void initState() {
    super.initState();
    _sliderController = _isDesktop ? CarouselSliderController() : null;
  }


  /// Determines whether the current device is a desktop platform.
  bool get _isDesktop => (defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.windows);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (_isDesktop) ...[
          GestureDetector(
            onTap: () {
              _sliderController!.previousPage();
            },
            child: Icon(
              valueBasedOnLocale<IconData>(
                context,
                ltr: Icons.arrow_circle_left_rounded,
                rtl: Icons.arrow_circle_right_rounded,
              ),
              size: 36,
              color: mainThemeColor(context),
            ),
          ),
          AppSizes.width8,
        ],
        Expanded(
          child: widget.builder(_sliderController),
        ),
        if (_isDesktop) ...[
          AppSizes.width8,
          GestureDetector(
            onTap: () {
              _sliderController!.nextPage();
            },
            child: Icon(
              valueBasedOnLocale<IconData>(
                context,
                ltr: Icons.arrow_circle_right_rounded,
                rtl: Icons.arrow_circle_left_rounded,
              ),
              size: 36,
              color: mainThemeColor(context),
            ),
          ),
        ],
      ],
    );
  }
}
