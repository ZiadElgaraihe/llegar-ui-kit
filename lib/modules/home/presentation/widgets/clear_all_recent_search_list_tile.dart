import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ClearAllRecentSearchListTile extends StatelessWidget {
  const ClearAllRecentSearchListTile({
    super.key,
    required this.onClearAllPressed,
  });

  final VoidCallback onClearAllPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        translate(context).recent,
        style: AppTextStyles.bold20(context),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing:
          //use TextFieldTapRegion to prevent text field from
          //being unfocused when button is pressed
          TextFieldTapRegion(
        child: TextButton(
          onPressed: onClearAllPressed,
          child: Text(translate(context).clearAll),
        ),
      ),
    );
  }
}
