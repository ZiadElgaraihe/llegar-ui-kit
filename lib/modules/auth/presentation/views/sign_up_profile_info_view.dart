import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/utils/functions/translate.dart';

class SignUpProfileInfoView extends StatelessWidget {
  const SignUpProfileInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: CustomAppBar(
          title: translate(context).back,
        ),
      ),
    );
  }
}