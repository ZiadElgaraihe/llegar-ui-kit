import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/auth/presentation/widgets/sign_up_identification_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class SignUpIdentificationView extends StatelessWidget {
  const SignUpIdentificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: CustomAppBar(title: translate(context).back, titleSpacing: 0),
        body: const SignUpIdentificationViewBody(),
      ),
    );
  }
}
