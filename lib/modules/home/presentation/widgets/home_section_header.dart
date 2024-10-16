import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: AppTextStyles.bold20(context),
          ),
        ),
        TextButton(
          onPressed: () {
            futureDelayedNavigator(onPressed);
          },
          style: TextButton.styleFrom(
            foregroundColor: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            ),
          ),
          child: Text(
            translate(context).seeAll,
            style: AppTextStyles.bold14(context).copyWith(
              color: valueBasedOnTheme<Color>(
                context,
                light: AppColors.black,
                dark: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
