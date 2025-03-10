import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class SpecialOffersConatiner extends StatelessWidget {
  const SpecialOffersConatiner({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: AppSizes.mediumtBreakpoint,
      ),
      child: AspectRatio(
        aspectRatio: 382 / 172,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.antiFlashWhite,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: mainThemeColor(context),
              width: 3,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
