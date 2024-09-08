import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_elevated_button.dart';
import 'package:llegar/core/presentation/widgets/custom_text_form_field.dart';
import 'package:llegar/modules/auth/presentation/widgets/auth_password_text_form_field.dart';
import 'package:llegar/modules/auth/presentation/widgets/remember_me_row.dart';
import 'package:llegar/utils/app_icons.dart';
import 'package:llegar/utils/app_routes.dart';
import 'package:llegar/utils/app_sizes.dart';
import 'package:llegar/utils/functions/translate.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late ValueNotifier<AutovalidateMode> _autoValidateMode;

  @override
  void initState() {
    super.initState();
    _autoValidateMode =
        ValueNotifier<AutovalidateMode>(AutovalidateMode.disabled);
  }

  @override
  void dispose() {
    _autoValidateMode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder(
          valueListenable: _autoValidateMode,
          builder: (context, autoValidateMode, child) => Form(
            key: _formKey,
            autovalidateMode: autoValidateMode,
            child: Column(
              children: [
                CustomTextFormField(
                  hintText: translate(context).email,
                  keyboardType: TextInputType.emailAddress,
                  icon: AppIcons.email,
                ),
                AppSizes.height12,
                AuthPasswordTextFormField(
                  hintText: translate(context).password,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        const RememberMeRow(),
        const SizedBox(height: 16),
        CustomElevatedButton(
          title: translate(context).signUp,
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              if (_autoValidateMode.value != AutovalidateMode.disabled) {
                _autoValidateMode.value = AutovalidateMode.disabled;
              }
              
              Navigator.pushNamed(context, AppRoutes.signUpProfileInfoView);
            } else {
              _autoValidateMode.value = AutovalidateMode.always;
            }
          },
        ),
      ],
    );
  }
}
