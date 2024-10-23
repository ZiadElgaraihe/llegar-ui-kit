import 'package:flutter/material.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class FaqTextFormField extends StatelessWidget {
  const FaqTextFormField({
    super.key,
    this.controller,
    this.onSaved,
    this.validator,
  });

  final TextEditingController? controller;
  final void Function(String? newValue)? onSaved;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      minLines: 7,
      maxLines: 10,
      cursorColor: mainThemeColor(context),
      style: AppTextStyles.bold20(context).copyWith(
        color: secondaryThemeColor(context),
      ),
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(24),
        filled: false,
        hintText: translate(context).typeYourMessage,
        hintStyle: AppTextStyles.bold20(context).copyWith(
          color: AppColors.darkGrey,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: mainThemeColor(context),
            width: 3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: mainThemeColor(context),
            width: 3,
          ),
        ),
      ),
    );
  }
}
