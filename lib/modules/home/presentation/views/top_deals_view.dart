import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/home/presentation/widgets/top_deals_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class TopDealsView extends StatelessWidget {
  const TopDealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).topDeals,
      ),
      body: const TopDealsViewBody(),
    );
  }
}
