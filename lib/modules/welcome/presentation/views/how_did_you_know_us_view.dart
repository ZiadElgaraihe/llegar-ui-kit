import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/welcome/presentation/widgets/how_did_you_know_about_us_view_body.dart';

class HowDidYouKnowUsView extends StatelessWidget {
  const HowDidYouKnowUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(toolbarHeight: 0),
      body: HowDidYouKnowUsViewBody(),
    );
  }
}
