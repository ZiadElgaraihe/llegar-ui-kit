import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({
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
      child: const CustomTextFormField(
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
