import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/profile/presentation/widgets/subscribe_to_premium_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class SubscribeToPremiumView extends StatelessWidget {
  const SubscribeToPremiumView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).back,
        titleSpacing: 0,
      ),
      body: const SubscribeToPremiumViewBody(),
    );
  }
}
