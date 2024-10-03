import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.icon,
    this.inputFormatters,
    this.keyboardType = TextInputType.name,
    this.onSaved,
    this.readOnly = false,
    this.suffixIcon,
    this.textDirection,
    this.validator,
  });

  final TextEditingController? controller;
  final String? hintText;
  final String? icon;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType keyboardType;
  final void Function(String? newValue)? onSaved;
  final bool readOnly;
  final Widget? suffixIcon;
  final TextDirection? textDirection;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      keyboardType: keyboardType,
      textDirection: textDirection,
      obscureText: false,
      cursorColor: AppColors.prussianBlue,
      style: AppTextStyles.medium15(context).copyWith(
        color: AppColors.black,
        fontFamily: AppStrings.interFontFamily,
      ),
      inputFormatters: inputFormatters,
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: (icon != null)
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: SvgPicture.asset(icon!),
              )
            : null,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
