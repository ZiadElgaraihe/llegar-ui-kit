import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/profile/presentation/widgets/help_center_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class HelpCenterView extends StatelessWidget {
  const HelpCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).helpCenter,
      ),
      body: const HelpCenterViewBody(),
    );
  }
}
