import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_images.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
    required this.size,
    this.side,
    this.listenOnThemeChange = false,
  });

  final double size;
  final BorderSide? side;
  /// This variable is used only in profile view to change 
  /// border side color when theme change
  final bool listenOnThemeChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: side ??
              BorderSide(
                color: mainThemeColor(context, listen: listenOnThemeChange),
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
