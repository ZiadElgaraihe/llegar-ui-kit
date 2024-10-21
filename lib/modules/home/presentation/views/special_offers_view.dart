import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/home/presentation/widgets/special_offers_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class SpecialOffersView extends StatelessWidget {
  const SpecialOffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: translate(context).specialOffers,
      ),
      body: const SpecialOffersViewBody(),
    );
  }
}
