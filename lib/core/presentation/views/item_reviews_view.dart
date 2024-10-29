import 'package:flutter/material.dart';
import 'package:llegar/core/presentation/widgets/custom_app_bar.dart';
import 'package:llegar/core/presentation/widgets/item_reviews_view_body.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class ItemReviewsView extends StatelessWidget {
  const ItemReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '4 (70 ${translate(context).reviews})',
        titleSpacing: 0,
      ),
      body: const ItemReviewsViewBody(),
    );
  }
}
