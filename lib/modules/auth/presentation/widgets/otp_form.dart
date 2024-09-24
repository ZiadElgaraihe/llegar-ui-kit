import 'package:flutter/material.dart';
import 'package:llegar/modules/auth/presentation/widgets/otp_text_field.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({
    super.key,
    this.numberOfFields = 4,
    this.autovalidateMode,
    this.formKey,
    this.onChanged,
    this.onSaved,
    this.validator,
  });

  final AutovalidateMode? autovalidateMode;
  final GlobalKey<FormState>? formKey;
  final void Function(String otp)? onChanged;
  final void Function(String? newValue)? onSaved;
  final int numberOfFields;
  final String? Function(String? value)? validator;

  String? _validateOtp(BuildContext context, String value) {
    if (value.length < numberOfFields) {
      //you can change the translated error message
      //depending on the number of fields you use
      return translate(context).pleaseEnterValidFourDigitOtp;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child:
          //use form field to treat with the otp fields as one field
          FormField<String>(
        onSaved: onSaved,
        validator: validator ??
            (value) {
              return _validateOtp(context, value ?? '');
            },
        builder: (field) => Column(
          children: [
            OtpTextField(
              onChanged: (otp) {
                if (onChanged != null) {
                  onChanged!(otp);
                }
                // Revalidate the form after each input change
                field.didChange(otp);
              },
            ),
            if (field.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  field.errorText!,
                  style: Theme.of(context).inputDecorationTheme.errorStyle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
