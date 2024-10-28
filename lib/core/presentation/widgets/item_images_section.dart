import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/constants/app_sizes.dart';

class ItemImagesSection extends StatelessWidget {
  const ItemImagesSection({
    super.key,
    required this.heroTag,
  });

  final String? heroTag;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: AppSizes.mediumtBreakpoint,
      ),
      child: Hero(
        tag: '$heroTag',
        child: ClipRRect(
          borderRadius: (width > AppSizes.mediumtBreakpoint)
              ? BorderRadius.circular(24)
              : BorderRadius.zero,
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              initialPage: 0,
              aspectRatio: 430 / 307,
              viewportFraction: 1,
              autoPlayAnimationDuration: const Duration(milliseconds: 400),
            ),
            items: List.generate(
              1,
              (index) => GestureDetector(
                onTap: () {
                  _showImagePreview(context);
                },
                child: Image.asset(AppImages.camera),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showImagePreview(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: Image.asset(AppImages.camera),
      ),
    );
  }
}

