import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_password_text_form_field.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({
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
        children: [
          CustomTextFormField(
            hintText: translate(context).email,
            keyboardType: TextInputType.emailAddress,
            icon: AppIcons.email,
          ),
          AppSizes.height12,
          CustomPasswordTextFormField(
            hintText: translate(context).password,
          ),
        ],
      ),
    );
  }
}
