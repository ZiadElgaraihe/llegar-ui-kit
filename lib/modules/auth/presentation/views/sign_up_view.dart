import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(toolbarHeight: 0),
    );
  }
}
