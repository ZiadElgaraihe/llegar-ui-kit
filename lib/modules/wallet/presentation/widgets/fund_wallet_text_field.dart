import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/theme_colors.dart';

class FundWalletTextField extends StatelessWidget {
  const FundWalletTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
      keyboardType: TextInputType.number,
      style: AppTextStyles.bold48(context).copyWith(
        color: mainThemeColor(context),
      ),
      cursorHeight: 55,
      cursorColor: mainThemeColor(context),
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
        FilteringTextInputFormatter.allow(RegExp(r'^\$\d*\.?\d{0,2}')),
      ],
      decoration: InputDecoration(
        filled: false,
        constraints: const BoxConstraints(
          maxWidth: AppSizes.expandedBreakpoint,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 40,
        ),
        enabledBorder: _getBorderStyle(context),
        focusedBorder: _getBorderStyle(context),
      ),
    );
  }

  OutlineInputBorder _getBorderStyle(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        width: 3,
        color: mainThemeColor(context),
      ),
    );
  }
}
