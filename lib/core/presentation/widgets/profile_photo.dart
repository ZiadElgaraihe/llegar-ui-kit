import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
    required this.size,
    this.side,
  });

  final double size;
  final BorderSide? side;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: side ??
              BorderSide(
                color: valueBasedOnTheme<Color>(
                  context,
                  listen: true,
                  light: AppColors.prussianBlue,
                  dark: AppColors.orange,
                )!,
                width: 4,
              ),
        ),
        image: const DecorationImage(
          image: AssetImage(AppImages.livePhoto),
        ),
      ),
    );
  }
}
