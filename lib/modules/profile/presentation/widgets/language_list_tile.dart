import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/language_entity.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class LanguageListTile extends StatelessWidget {
  const LanguageListTile({
    super.key,
    required this.groupValue,
    required this.languageEntity,
    required this.onChanged,
  });

  final Locale groupValue;
  final LanguageEntity languageEntity;
  final void Function(Locale? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(languageEntity.value);
      },
      child: ListTile(
        title: Text(
          languageEntity.title,
          style: AppTextStyles.semiBold20(context).copyWith(
            color: secondaryThemeColor(context),
          ),
        ),
        trailing: Radio(
          value: languageEntity.value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
