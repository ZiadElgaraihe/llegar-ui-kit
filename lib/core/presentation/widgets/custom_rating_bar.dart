import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({
    super.key,
    required this.onRatingUpdate,
  });

  final void Function(double rating) onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      itemPadding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width > 350 ? 8.0 : 4.0,
      ),
      ratingWidget: RatingWidget(
        full: SvgPicture.asset(
          AppIcons.ratingStar,
          colorFilter: valueBasedOnTheme<ColorFilter>(
            context,
            dark: const ColorFilter.mode(AppColors.orange, BlendMode.srcATop),
          ),
        ),
        half: const SizedBox(),
        empty: SvgPicture.asset(
          AppIcons.ratingStarOutlined,
          colorFilter: valueBasedOnTheme<ColorFilter>(
            context,
            dark: const ColorFilter.mode(AppColors.orange, BlendMode.srcATop),
          ),
        ),
      ),
      onRatingUpdate: onRatingUpdate,
    );
  }
}
