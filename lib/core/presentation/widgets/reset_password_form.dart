import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_password_text_form_field.dart';
import 'package:llegar/shared/constants/app_colors.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/constants/app_text_styles.dart';
import 'package:llegar/shared/utils/functions/translate.dart';
import 'package:llegar/shared/utils/functions/value_based_on_theme.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({
    super.key,
    this.autovalidateMode,
    this.formKey,
  });

  final AutovalidateMode? autovalidateMode;
  final GlobalKey<FormState>? formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            translate(context).createNewPassword,
            style: AppTextStyles.bold16(context).copyWith(
              color: valueBasedOnTheme<Color>(
                context,
                light: AppColors.black,
                dark: AppColors.white,
              )!,
            ),
          ),
          AppSizes.height8,
          const CustomPasswordTextFormField(appearPrefixIcon: false),
          AppSizes.height8,
          Text(
            translate(context).confirmTheNewPassword,
            style: AppTextStyles.bold16(context).copyWith(
              color: valueBasedOnTheme<Color>(
                context,
                light: AppColors.black,
                dark: AppColors.white,
              )!,
            ),
          ),
          AppSizes.height8,
          const CustomPasswordTextFormField(appearPrefixIcon: false),
        ],
      ),
    );
  }
}
