import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class AddItemDataSection extends StatelessWidget {
  const AddItemDataSection({
    super.key,
    required this.title,
    this.controller,
    this.inputFormatters,
    this.keyboardType = TextInputType.name,
    this.maxLines,
    this.minLines,
    this.onSaved,
    this.validator,
  });

  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType keyboardType;
  final int? maxLines;
  final int? minLines;
  final void Function(String? newValue)? onSaved;
  final String title;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.semiBold24(context).copyWith(
            color: valueBasedOnTheme<Color>(
              context,
              light: AppColors.black,
              dark: AppColors.white,
            ),
          ),
        ),
        AppSizes.height8,
        CustomTextFormField(
          controller: controller,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          maxLines: maxLines,
          minLines: minLines,
          onSaved: onSaved,
          validator: validator,
        ),
        AppSizes.height16,
      ],
    );
  }
}
