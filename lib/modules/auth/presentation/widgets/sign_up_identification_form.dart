import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/modules/auth/presentation/widgets/id_photo_section.dart';
import 'package:llegar/modules/auth/presentation/widgets/live_photo_section.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

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
          // Utilize the `inputFormatters` property to restrict user input
          // to valid phone numbers based on the specific requirements
          // of your use case.
          CustomTextFormField(
            hintText: translate(context).phoneNumber,
            keyboardType: TextInputType.phone,
            textDirection: TextDirection.ltr,
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
