import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/auth/presentation/widgets/forget_password_view_body.dart';
import 'package:llegar/utils/functions/translate.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: CustomAppBar(title: translate(context).back, titleSpacing: 0),
        body: const ForgetPasswordViewBody(),
      ),
    );
  }
}
