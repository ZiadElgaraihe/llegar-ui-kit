import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/future_delayed_navigator.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

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
          child: Text(translate(context).seeAll),
        ),
      ],
    );
  }
}
