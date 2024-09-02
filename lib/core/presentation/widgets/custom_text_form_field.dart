import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/utils/app_colors.dart';
import 'package:llegar/utils/app_strings.dart';
import 'package:llegar/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType = TextInputType.name,
    this.readOnly = false,
    this.controller,
    this.icon,
    this.onSaved,
    this.suffixIcon,
    this.validator,
  });

  final TextEditingController? controller;
  final String hintText;
  final String? icon;
  final TextInputType keyboardType;
  final void Function(String? newValue)? onSaved;
  final bool readOnly;
  final Widget? suffixIcon;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      keyboardType: keyboardType,
      obscureText: false,
      cursorColor: AppColors.prussianBlue,
      style: AppTextStyles.medium15(context).copyWith(
        color: AppColors.black,
        fontFamily: AppStrings.interFontFamily,
      ),
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (icon != null) ? SvgPicture.asset(icon!) : null,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
