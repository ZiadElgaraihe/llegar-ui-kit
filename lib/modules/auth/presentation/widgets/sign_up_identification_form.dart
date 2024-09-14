import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/modules/auth/presentation/widgets/id_photo_section.dart';
import 'package:llegar/modules/auth/presentation/widgets/live_photo_section.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';

class SignUpIdentificationForm extends StatelessWidget {
  const SignUpIdentificationForm({
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
          AppSizes.height24,
          CustomTextFormField(
            hintText: translate(context).phoneNumber,
            keyboardType: TextInputType.phone,
          ),
          AppSizes.height12,
          const LivePhotoSection(),
          AppSizes.height12,
          const IdPhotoSection(),
        ],
      ),
    );
  }
}
