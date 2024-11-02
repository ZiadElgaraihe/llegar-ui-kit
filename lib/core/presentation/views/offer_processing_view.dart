import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/core/presentation/widgets/offer_processing_view_body.dart';

class OfferProcessingView extends StatelessWidget {
  const OfferProcessingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        toolbarHeight: 0,
      ),
      body: OfferProcessingViewBody(),
    );
  }
}
