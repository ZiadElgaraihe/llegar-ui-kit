import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class RecentSearchListTile extends StatelessWidget {
  const RecentSearchListTile({
    super.key,
    required this.onRemovePressed,
  });

  final VoidCallback onRemovePressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Tesla',
        style: AppTextStyles.medium20(context).copyWith(
          color: secondaryThemeColor(context),
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing:
          //use TextFieldTapRegion to prevent text field from
          //being unfocused when button is pressed
          TextFieldTapRegion(
        child: IconButton(
          onPressed: onRemovePressed,
          style: IconButton.styleFrom(
            foregroundColor: secondaryThemeColor(context),
          ),
          icon: const Icon(
            Icons.close_rounded,
            size: 24,
          ),
        ),
      ),
    );
  }
}
