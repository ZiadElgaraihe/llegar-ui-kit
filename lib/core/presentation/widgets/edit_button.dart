import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: valueBasedOnTheme<Color>(
          context,
          light: AppColors.prussianBlue,
          dark: AppColors.orange,
        )!,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            futureDelayedNavigator(onTap);
          },
          borderRadius: BorderRadius.circular(10),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 6,
            ),
            child: SvgPicture.asset(AppIcons.pen),
          ),
        ),
      ),
    );
  }
}
