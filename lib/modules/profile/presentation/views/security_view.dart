import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/profile/presentation/widgets/security_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class SecurityView extends StatelessWidget {
  const SecurityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).security,
      ),
      body: const SecurityViewBody(),
    );
  }
}
