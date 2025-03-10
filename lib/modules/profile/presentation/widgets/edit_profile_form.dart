import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_animated_dropdown.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({
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
            hintText: translate(context).userName,
          ),
          AppSizes.height12,
          CustomTextFormField(
            hintText: translate(context).fullName,
          ),
          AppSizes.height12,
          CustomTextFormField(
            hintText: translate(context).email,
            keyboardType: TextInputType.emailAddress,
          ),
          AppSizes.height12,
          // Utilize the `inputFormatters` property to restrict user input
          // to valid phone numbers based on the specific requirements 
          // of your use case.
          CustomTextFormField(
            hintText: translate(context).phoneNumber,
            keyboardType: TextInputType.phone,
            textDirection: TextDirection.ltr,
          ),
          AppSizes.height12,
          CustomAnimatedDropdown<String>(
            hintText: translate(context).city,
            items: <String>[
              translate(context).jerusalem,
              translate(context).baghdad,
              translate(context).damascus,
              translate(context).cairo,
              translate(context).rabat,
            ],
          ),
        ],
      ),
    );
  }
}
