import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/modules/home/presentation/widgets/offer_recieved_view_body.dart';

class OfferRecievedView extends StatelessWidget {
  const OfferRecievedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Atef Khaled',
      ),
      body: OfferRecievedViewBody(),
    );
  }
}
