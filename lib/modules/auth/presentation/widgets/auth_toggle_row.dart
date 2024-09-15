import 'package:flutter/material.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_text_styles.dart';
import 'package:llegar/utils/functions/future_delayed_navigator.dart';

class AuthToggleRow extends StatelessWidget {
  const AuthToggleRow({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
    required this.title,
  });

  final String buttonTitle;
  final VoidCallback onPressed;
  final String title;

  void _onPressed() {
    futureDelayedNavigator(
      () {
        onPressed();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyles.bold14(context).copyWith(
            color: AppColors.grey,
          ),
        ),
        TextButton(
          onPressed: _onPressed,
          child: Text(buttonTitle),
        ),
      ],
    );
  }
}
