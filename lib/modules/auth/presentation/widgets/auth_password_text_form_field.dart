import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_strings.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';

class AuthPasswordTextFormField extends StatefulWidget {
  const AuthPasswordTextFormField({
    super.key,
    this.appearPrefixIcon = true,
    this.controller,
    this.hintText,
    this.onSaved,
    this.validator,
  });

  final bool appearPrefixIcon;
  final TextEditingController? controller;
  final String? hintText;
  final void Function(String? newValue)? onSaved;
  final String? Function(String? value)? validator;

  @override
  State<AuthPasswordTextFormField> createState() =>
      _AuthPasswordTextFormFieldState();
}

class _AuthPasswordTextFormFieldState extends State<AuthPasswordTextFormField> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.visiblePassword,
      obscureText: !_isVisible,
      obscuringCharacter: '•',
      cursorColor: AppColors.prussianBlue,
      style: AppTextStyles.medium15(context).copyWith(
        color: AppColors.black,
        fontFamily: AppStrings.interFontFamily,
      ),
      onSaved: widget.onSaved,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.appearPrefixIcon
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: SvgPicture.asset(AppIcons.password),
              )
            : null,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isVisible = !_isVisible;
            });
          },
          icon: Icon(
            _isVisible
                ? Icons.visibility_rounded
                : Icons.visibility_off_rounded,
            size: 18,
            color: AppColors.darkGrey,
          ),
        ),
      ),
    );
  }
}
