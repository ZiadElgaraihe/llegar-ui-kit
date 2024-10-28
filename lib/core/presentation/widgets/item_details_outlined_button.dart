import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';

class ItemDetailsOutlinedButton extends StatelessWidget {
  const ItemDetailsOutlinedButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        futureDelayedNavigator(onPressed);
      },
      style: OutlinedButton.styleFrom(
        fixedSize: const Size.fromHeight(50),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          // vertical: 8,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        title,
        style: AppTextStyles.semiBold24(context).copyWith(
          fontFamily: AppStrings.interFontFamily,
        ),
      ),
    );
  }
}
