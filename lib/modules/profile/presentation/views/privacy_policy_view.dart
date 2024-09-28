import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/profile/presentation/widgets/privacy_policy_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).privacyPolicy,
      ),
      body: const PrivacyPolicyViewBody(),
    );
  }
}
