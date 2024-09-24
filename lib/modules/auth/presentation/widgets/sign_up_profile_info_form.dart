import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_animated_dropdown.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/modules/auth/presentation/widgets/birth_date_text_form_field.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class SignUpProfileInfoForm extends StatelessWidget {
  const SignUpProfileInfoForm({
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
            hintText: translate(context).fullName,
          ),
          AppSizes.height12,
          CustomTextFormField(hintText: translate(context).userName),
          AppSizes.height12,
          BirthDateTextFormField(
            onDatePicked: (date) {},
          ),
          AppSizes.height24,
          CustomAnimatedDropdown<String>(
            hintText: translate(context).gender,
            items: <String>[
              translate(context).male,
              translate(context).female,
            ],
          ),
          AppSizes.height24,
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
